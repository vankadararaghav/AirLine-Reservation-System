package tech.codingclub.helix.controller;

import org.jooq.Condition;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import tech.codingclub.helix.database.GenericDB;
import tech.codingclub.helix.entity.Flight;
import tech.codingclub.helix.entity.Passenger;
import tech.codingclub.helix.entity.PassengersResponse;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.ArrayList;
import java.util.List;

@RequestMapping("/user")
@Controller
public class UserController {

    @RequestMapping(method=RequestMethod.GET,value="/flight_list")
    public  String    flightsearch(ModelMap modelmap, HttpServletRequest request, HttpServletResponse response){
        String from = request.getParameter("from");
        String to = request.getParameter("to");
        String date = request.getParameter("date");
        Condition condition = tech.codingclub.helix.tables.Flight.FLIGHT.FROM.eq(from).and(tech.codingclub.helix.tables.Flight.FLIGHT.TO.eq(to));
        List<Flight> flights = (List<Flight>) GenericDB.getRows(tech.codingclub.helix.tables.Flight.FLIGHT,Flight.class,condition,null);
        for(Flight fly : flights)
        {
            fly.date = date;
        }

       /* ModelAndView mv = new ModelAndView();
        mv.addObject("flights",flights);
        mv.setViewName("FlightDetails");*/

        modelmap.addAttribute("flights",flights);
        return "FlightDetails";
    }
    @RequestMapping(method=RequestMethod.GET,value="/book_ticket")
    public  String    bookTicket(ModelMap modelmap, HttpServletRequest request, HttpServletResponse response){

        Long id = Long.parseLong(request.getParameter("id"));
        String date = request.getParameter("date");
         List<Flight> flight  = (List<Flight>) GenericDB.getRows(tech.codingclub.helix.tables.Flight.FLIGHT,Flight.class,tech.codingclub.helix.tables.Flight.FLIGHT.ID.eq(id),null);

        modelmap.addAttribute("id",flight.get(0).id);
        modelmap.addAttribute("date",date) ;
        modelmap.addAttribute("flightName",flight.get(0).name);
        modelmap.addAttribute("cost",flight.get(0).cost);
        return "passengerDetails";
    }

    @RequestMapping(method=RequestMethod.GET,value="/ticket_generation")
    public  String   tickerGeneration(ModelMap modelmap, HttpServletRequest request, HttpServletResponse response){

        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String phone = request.getParameter("phone");
        String date  = request.getParameter("date") ;
        String flightName = request.getParameter("flightName");
        String cost  = request.getParameter("cost");
        Long   id    = Long.parseLong(request.getParameter("id"));
        List<Flight> flight  = (List<Flight>) GenericDB.getRows(tech.codingclub.helix.tables.Flight.FLIGHT,Flight.class,tech.codingclub.helix.tables.Flight.FLIGHT.ID.eq(id),null);

        modelmap.addAttribute("flight",flight.get(0));

        modelmap.addAttribute("name",name);
        modelmap.addAttribute("date",date);


        return "FlightTicket";
    }



    @RequestMapping(method=RequestMethod.POST,value="/passenger_details")

    public  @ResponseBody  String   tikerGeneration(@RequestBody Passenger passenger , HttpServletRequest request, HttpServletResponse response){

        passenger.member_id = ControllerUtils.getUserId(request);

        new  GenericDB<Passenger>().addRow(tech.codingclub.helix.tables.Passenger.PASSENGER,passenger);

       return "success";

    }


    @RequestMapping(method=RequestMethod.GET,value="/passengers")
    public  String   passengers(ModelMap modelmap, HttpServletRequest request, HttpServletResponse response){

       Long memberId = ControllerUtils.getUserId(request);
       List<Passenger> passengers1  = (List<Passenger>) GenericDB.getRows(tech.codingclub.helix.tables.Passenger.PASSENGER,Passenger.class,tech.codingclub.helix.tables.Passenger.PASSENGER.MEMBER_ID.eq(memberId),null);
       List<PassengersResponse> passengers = new ArrayList<PassengersResponse>();
       for(int i=0;i<passengers1.size();i++)
       {
           PassengersResponse pr = new PassengersResponse();
           pr.name = passengers1.get(i).name;
           pr.email= passengers1.get(i).email;
           pr.phone =  passengers1.get(i).phone;
           pr.date  = passengers1.get(i).date;
           pr.flight_id = passengers1.get(i).flight_id;
           List<Flight> flights = (List<Flight>) GenericDB.getRows(tech.codingclub.helix.tables.Flight.FLIGHT,Flight.class,tech.codingclub.helix.tables.Flight.FLIGHT.ID.eq(pr.flight_id),null);
           pr.flightName = flights.get(0).name;
           pr.cost  = flights.get(0).cost;
           pr.passenger_id = passengers1.get(i).passenger_id;
           passengers.add(pr);

       }
       modelmap.addAttribute("passengers",passengers);
       return "Passengers";
    }




    @RequestMapping(method=RequestMethod.GET,value="/ticket_show")
    public  String   ticketView(ModelMap modelmap, HttpServletRequest request, HttpServletResponse response){

        Long  id = Long.parseLong(request.getParameter("id"));
        List<Passenger> x = (List<Passenger>) GenericDB.getRows(tech.codingclub.helix.tables.Passenger.PASSENGER,Passenger.class,tech.codingclub.helix.tables.Passenger.PASSENGER.PASSENGER_ID.eq(id),null);


        String name = x.get(0).name;
        String email = x.get(0).email;
        String phone = x.get(0).phone;
        String date  = x.get(0).date;
        String cost  = x.get(0).name;
        Long   flight_id    =x.get(0).flight_id;
        List<Flight> flight  = (List<Flight>) GenericDB.getRows(tech.codingclub.helix.tables.Flight.FLIGHT,Flight.class,tech.codingclub.helix.tables.Flight.FLIGHT.ID.eq(flight_id),null);

        modelmap.addAttribute("flight",flight.get(0));

        modelmap.addAttribute("name",name);
        modelmap.addAttribute("date",date);

        return "FlightTicket";
    }



}
