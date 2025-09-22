package com.example.cauthu.controller;

import com.example.cauthu.entity.CauThu;
import com.example.cauthu.service.ICauThuService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
@RequestMapping("/cauthu")
public class CauThuController {

    @Autowired
    private ICauThuService cauThuService;

    @GetMapping("/list")
    public ModelAndView showList() {
        ModelAndView mav = new ModelAndView("list");
        mav.addObject("cauthuList", cauThuService.findAll());
        return mav;
    }


    @GetMapping("/add")
    public String showFormAdd(Model model) {
        model.addAttribute("cauthu", new CauThu());
        return "add";
    }


    @PostMapping("/add")
    public String saveCauThu(@ModelAttribute("cauthu") CauThu cauThu,
                             RedirectAttributes redirectAttributes) {
        cauThuService.addCauThu(cauThu);
        redirectAttributes.addFlashAttribute("mess", "Thêm cầu thủ thành công!");
        return "redirect:/cauthu/list";
    }


    @GetMapping("/detail")
    public String detail(@RequestParam(name = "id", required = false, defaultValue = "1") int id,
                         Model model) {
        CauThu cauThu = cauThuService.findById(id);
        model.addAttribute("cauthu", cauThu);
        return "detail";
    }


    @GetMapping("/detail/{id:[0-9]+}")
    public String detail2(@PathVariable(name = "id") int id, Model model) {
        CauThu cauThu = cauThuService.findById(id);
        model.addAttribute("cauthu", cauThu);
        return "detail";
    }

    @GetMapping("/delete/{id}")
    public String delete(@PathVariable("id") int id,
                         RedirectAttributes redirectAttributes) {
        cauThuService.deleteCauThu(id);
        redirectAttributes.addFlashAttribute("mess", "Xóa cầu thủ thành công!");
        return "redirect:/cauthu/list";
    }
}
