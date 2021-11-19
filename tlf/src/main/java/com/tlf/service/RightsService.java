package com.tlf.service;

import com.tlf.pojo.Rights;

import java.util.List;

public interface RightsService {
    List<Rights> findAll();

    List<Rights> getRightsList();
}
