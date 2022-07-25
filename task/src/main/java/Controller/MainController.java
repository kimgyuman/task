package Controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MainController {


    @RequestMapping(value ="/hello.do")
    public String home(Model model){

        model.addAttribute("test","hello world!");
        return "hello";
    }
}
