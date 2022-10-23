package cz.czechitas.java2webapps.ukol3.controller;

import cz.czechitas.java2webapps.ukol3.entity.Vizitka;
import cz.czechitas.java2webapps.ukol3.service.VizitkaService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.method.support.ModelAndViewContainer;
import org.springframework.web.servlet.ModelAndView;

import java.util.ArrayList;
import java.util.List;

/**
 * Kontroler obsluhující zobrazování vizitek.
 */
@Controller
public class VizitkaController {
    private final VizitkaService service;

    public VizitkaController(VizitkaService service) {
        this.service = service;
    }

    @GetMapping("/")
    public ModelAndView seznam() {
        ModelAndView result = new ModelAndView("seznam");
        result.addObject("seznam", service.getAll());
        return result;
    }

    @GetMapping("/detail/{id}")
    public ModelAndView detail(@PathVariable int id) {
        ModelAndView result = new ModelAndView("detail");
        result.addObject("vizitka", service.getById(id));
        result.addObject("id",id);
        return result;
    }

    @PostMapping("/nova")
    public String append(Vizitka vizitka) {
        service.append (vizitka);
        return "redirect:/";
    }
    @GetMapping("/nova")
    public ModelAndView nova () {
        ModelAndView modelAndView = new ModelAndView("/novaVizitka");
        return modelAndView;
    }
    @PostMapping("/smazat")
    public String smazat(int id) {
        service.delete(id);
        return "redirect:/";
    }
}
