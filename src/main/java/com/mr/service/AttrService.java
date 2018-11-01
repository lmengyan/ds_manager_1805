package com.mr.service;

import com.mr.model.OBJECTTMallAttr;
import com.mr.model.TMallAttrVO;

import java.util.List;

/**
 * Created by Lmy on 2018/10/30.
 */
public interface AttrService {
    void saveAttr(Integer flbh2, TMallAttrVO tMallAttrVO);

    List<OBJECTTMallAttr> findAttrByclass2(Integer flbh2);
}
