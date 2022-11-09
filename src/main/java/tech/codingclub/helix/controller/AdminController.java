package tech.codingclub.helix.controller;



import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import tech.codingclub.helix.database.GenericDB;
import tech.codingclub.helix.entity.Flight;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@RequestMapping("/admin")
@Controller
public class AdminController {

    @RequestMapping(method=RequestMethod.GET,value="/flight_creation")
    public String  flight_search(ModelMap modelMap, HttpServletRequest request, HttpServletResponse response){
        return "FlightCreation";
    }
    @RequestMapping(method=RequestMethod.POST,value="/flight_creation")
    public @ResponseBody  String  flightsearch(@RequestBody  Flight flight, HttpServletRequest request, HttpServletResponse response){

        new GenericDB<Flight>().addRow(tech.codingclub.helix.tables.Flight.FLIGHT,flight);

        return "created successfully";
    }

}
