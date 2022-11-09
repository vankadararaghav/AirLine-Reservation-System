package tech.codingclub.helix.controller;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;
import tech.codingclub.helix.database.GenericDB;
import tech.codingclub.helix.entity.LoginResponse;
import tech.codingclub.helix.entity.Member;
import tech.codingclub.helix.entity.SignupResponse;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * User: rishabh
 */
@Controller
@RequestMapping("/")
public class MainController {

    private static Logger logger = Logger.getLogger(MainController.class);

    @RequestMapping(method = RequestMethod.GET, value = "/helloworld")
    public String getQuiz(ModelMap modelMap, HttpServletResponse response, HttpServletRequest request) {
        return "hello";
    }



    @RequestMapping(method=RequestMethod.GET,value="/alien")
    public String error(ModelMap modelmap,HttpServletRequest request,HttpServletResponse response)
    {
        return "alien";
    }

    @RequestMapping(method = RequestMethod.GET, value = "/signup")
   public String abcde(ModelMap modelmap,HttpServletRequest request,HttpServletResponse response)
   {

       return "signup";
   }
    @RequestMapping(method = RequestMethod.GET, value = "/signin")
    public  String signin (ModelMap modelmap,HttpServletRequest request,HttpServletResponse response)
    {
        return "signin";

    }

    @RequestMapping(method = RequestMethod.POST, value = "/signup")
    public   @ResponseBody SignupResponse signup(@RequestBody Member member, HttpServletRequest request, HttpServletResponse response) {

        new GenericDB<Member>().addRow(tech.codingclub.helix.tables.Member.MEMBER,member);
        SignupResponse signup  = new SignupResponse(member.name,true);
        return signup;
    }

    @RequestMapping(method = RequestMethod.POST, value = "/signin")
    public   @ResponseBody  LoginResponse signin(@RequestBody Member member, HttpServletRequest request, HttpServletResponse response) {

        Member  x = new  GenericDB<Member>().getRow(tech.codingclub.helix.tables.Member.MEMBER,Member.class,tech.codingclub.helix.tables.Member.MEMBER.EMAIL.eq(member.email).and(tech.codingclub.helix.tables.Member.MEMBER.PASSWORD.eq(member.password)));
        if(x!=null)
        {
           ControllerUtils.setUserSession(request,x);
            LoginResponse login = new LoginResponse(member.id,true,"logined successfully");
            return login;
        }
        else {
           LoginResponse login = new LoginResponse(null,false,"Incorrect Username or Password");
            return login;
        }
    }


    @RequestMapping(method=RequestMethod.GET,value="/flight_search")
    public String  flight_search(ModelMap modelMap, HttpServletRequest request, HttpServletResponse response){

        return "flight_search";
    }

    @RequestMapping(method = RequestMethod.POST, value = "/handle")
    public   @ResponseBody String handleEncry(HttpServletRequest request, HttpServletResponse response) {

        return "Ok";
    }

    @RequestMapping(method=RequestMethod.GET,value="/flightDetails")
    public String  flightdetails(ModelMap modelMap, HttpServletRequest request, HttpServletResponse response){

        return "FlightDetails";
    }
    @RequestMapping(method=RequestMethod.GET,value="/passenger")
    public String  passenger (ModelMap modelMap, HttpServletRequest request, HttpServletResponse response){

        return "passengerDetails";
    }


}