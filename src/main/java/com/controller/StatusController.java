package com.controller;

import com.config.Properties;
import com.config.Utils;
import com.dao.AttachmentDao;
import com.dao.LocationDao;
import com.dao.StatusDao;
import com.dto.StatusDTO;
import com.entity.Attachment;
import com.entity.Location;
import com.entity.Status;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping("/status")
public class StatusController {
    @Autowired
    private AttachmentDao attachmentDao;

    @Autowired
    private LocationDao locationDao;

    @Autowired
    private StatusDao statusDao;

    @GetMapping("/create")
    public String createStatus(Model model){
        StatusDTO statusDTO = new StatusDTO();
        model.addAttribute("statusDTO",statusDTO);

        //set privacy list
        List<String> privacyList = new ArrayList<>(List.of("public","private"));
        model.addAttribute("privacyList",privacyList);

        // set location list dynamic way
        List<Location> locations = locationDao.getAll();
        List<String> locationList = new ArrayList<>();
        for (Location location:locations) {
            locationList.add(location.getLocationName());
        }
        model.addAttribute("locationList",locationList);

        return "status/create";
    }
    @PostMapping("/store")
    public String storeStatus(Model model, @ModelAttribute("StatusDTO") StatusDTO statusDTO,@RequestParam("image") MultipartFile[] files){

        Location location = locationDao.getByName(statusDTO.getLocation());

        List<Attachment> attachmentList = new ArrayList<>();
        for (MultipartFile file : files) {
            Attachment attachment = Utils.saveFile(file, Properties.STATUS_FOLDER);
            if (attachment != null) {
                attachmentList.add(attachment);
            }
        }
        attachmentDao.insertBulk(attachmentList);

        Status status = new Status();
        status.setTitle(statusDTO.getTitle());
        status.setDescription(statusDTO.getDescription());
        status.setPrivacy(statusDTO.getPrivacy());
        status.setLocation(location);
        status.setStatusAttachmentList(attachmentList);
        statusDao.store(status);
        model.addAttribute("status",status);
        return "status/show";
    }
    @GetMapping("/list")
    public String showStatusTableInBrowser(Model model){
        List<Status> statusList = statusDao.getAll();
        model.addAttribute("statusList",statusList);
        return "status/list";
    }
}
