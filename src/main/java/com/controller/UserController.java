package com.controller;

import com.config.Properties;
import com.config.Utils;
import com.dao.LocationDao;
import com.dao.UserDao;
import com.dto.UserDTO;
import com.entity.Attachment;
import com.entity.Location;
import com.entity.User;
import com.enums.Role;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;
import java.util.stream.Stream;

@Controller
@RequestMapping("/user")
public class UserController {

    @Autowired
    PasswordEncoder passwordEncoder;

    @Autowired
    private LocationDao locationDao;

    @Autowired
    private UserDao userDao;

    @GetMapping("/create")
    public String showUser(Model model){
        UserDTO userDTO = new UserDTO();
        List<Location> locations = locationDao.getAll();
        List<String> locationList = new ArrayList<>();
        for (Location location:locations) {
            locationList.add(location.getLocationName());
        }

        List<String> roleList = Stream.of(Role.values())
                        .map(Enum::name).collect(Collectors.toList());


        model.addAttribute("locationList",locationList);
        model.addAttribute("userDTO",userDTO);
        model.addAttribute("roleList",roleList);
        return "user/create";
    }

    @PostMapping("/store")
    public String storeUser(Model model, @ModelAttribute("userDTO")UserDTO userDTO, @RequestParam("image") MultipartFile file){

        Attachment attachment = Utils.saveFile(file, Properties.USER_FOLDER);

        Location location = locationDao.getByName(userDTO.getLocation());

        User user = new User();
        user.setName(userDTO.getName());
        user.setEmail(userDTO.getEmail());
        user.setPassword(passwordEncoder.encode(userDTO.getPassword()));
        user.setLocation(location);
        user.setAttachment(attachment);
        userDao.insert(user);
        model.addAttribute("user",user);
        return "user/show";
    }

    @GetMapping("/list")
    public String showUserList(Model model){
        List<User> userList = userDao.getAll();
        model.addAttribute("userList",userList);
        return "user/list";
    }
}
