package com.test.sceditor.controller;

import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;
import com.test.sceditor.entity.ScRelation;
import com.test.sceditor.service.ScRelationService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.web.authentication.logout.SecurityContextLogoutHandler;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.lang.reflect.Type;
import java.util.List;
import java.util.Map;

@Controller
public class MainController {

    @Autowired
    ScRelationService scRelationService;

    @RequestMapping("/relationviewer")
    public ModelAndView showIndex() {
        ModelAndView relationViewer = new ModelAndView("RelationUploadForm");
        relationViewer.addObject("relationList", scRelationService.getAll());
        return relationViewer;
    }

    @RequestMapping(value = "/upload", method = RequestMethod.POST)
    public ModelAndView handleFileUpload(@RequestParam("file") MultipartFile file) {
        List<ScRelation> relationList = scRelationService.parseRelationScsFile(file);
        ModelAndView relationEditorPage = new ModelAndView("RelationEditor");
        relationEditorPage.addObject("relationList", relationList);
        return relationEditorPage;
    }

    @RequestMapping(value = "/makeScs", method = RequestMethod.GET)
    public
    @ResponseBody
    String makeNotionScs(@RequestParam("notion") String jsonNotionAttrs) {
        Type stringStringMap = new TypeToken<Map<String, String>>() {
        }.getType();
        Map<String, String> map = new Gson().fromJson(jsonNotionAttrs, stringStringMap);
        return scRelationService.createTerm(map);
    }

    @RequestMapping(value = "/uploadNotionTemplate", method = RequestMethod.POST)
    public ModelAndView openNotionBuilder(@RequestParam("file") MultipartFile file) {
        List<ScRelation> relationList = scRelationService.parseRelationScsFile(file);
        ModelAndView notionEditorPage = new ModelAndView("NotionBuilder");
        notionEditorPage.addObject("relationList", relationList);
        return notionEditorPage;
    }

    @RequestMapping(value = "/logout", method = RequestMethod.GET)
    public String logoutPage(HttpServletRequest request, HttpServletResponse response) {
        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        if (auth != null) {
            new SecurityContextLogoutHandler().logout(request, response, auth);
        }
        return "redirect:/login?logout";
    }
}
