package com.controller;

import com.dao.LocationDao;
import com.dto.LocationDTO;
import com.entity.Location;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/location")
public class LocationController {
    @Autowired
    private LocationDao locationDao;

    @GetMapping("/create")
    public String createLocation(Model model){
        LocationDTO locationDTO = new LocationDTO();
        model.addAttribute("locationDTO",locationDTO);
        return "location/create";
    }

    @PostMapping("/store")
    public String storeLocation(Model model, @ModelAttribute("locationDTO") LocationDTO locationDTO){
        Location location = new Location();
        location.setLocationName(locationDTO.getLocationName());
        locationDao.insert(location);
        model.addAttribute("location",location);
        return "location/show";
    }
}
