package edu.lk.ijse.gdse.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.Date;

@AllArgsConstructor
@NoArgsConstructor
@Data
public class ComplaintModel {

    private String complanitId;
    private String complaint;
    private String complaintDate;
    private String status;
    private String remark;
    private String usrname;



}
