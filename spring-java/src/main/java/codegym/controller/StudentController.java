package codegym.controller;

import codegym.entity.Student;
import codegym.service.StudentService;
import codegym.service.StudentServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/student")
public class StudentController {
    @Autowired
    private StudentService studentService;
    @GetMapping("/list")
    public String list(Model model){
        model.addAttribute("students",studentService.findAll());
        return "/student/list";
    }

    @GetMapping("")
    public String index(){
        return "/student/index";
    }

    //pathVariable
//    @GetMapping("/view/{id}")
//    public String view(@PathVariable("id")String id ,Model model){
//        model.addAttribute("student",studentService.findById(id));
//        return "/student/view";
//    }

    @GetMapping("/view")
    public ModelAndView view(@RequestParam("id")Student student){
        ModelAndView modelAndView = new ModelAndView("/student/view","student",student);
//        modelAndView.addObject("student",studentService.findById(id));
        return modelAndView;
    }

    @GetMapping("/create")
    public ModelAndView create(){
        String[] classNames = {"A0921i01","A0921i02","A0921i03"};
        ModelAndView modelAndView = new ModelAndView("/student/create");
        modelAndView.addObject("student",new Student());
        modelAndView.addObject("classNames",classNames);
        return modelAndView;
    }

    @PostMapping("/create")
    public ModelAndView create(@ModelAttribute("student")Student student){
        studentService.create(student);
        return new ModelAndView("redirect:/student/list"
//                ,"students",studentService.findAll()
        );
    }
}
