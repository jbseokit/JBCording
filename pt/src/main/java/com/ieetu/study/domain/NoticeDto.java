package com.ieetu.study.domain;

import java.util.Date;
import java.util.List;

import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.web.multipart.MultipartFile;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor

public class NoticeDto {
    
    private int idx;
    
    private String ntStatus;
    
    private String ntTitle;
    
    private String ntWriter;
    
    private String ntContent;
    
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date ntRegDate;
    
}
