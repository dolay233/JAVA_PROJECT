package com.tlf.service;

import com.tlf.pojo.Item;
import com.tlf.vo.ItemVO;
import com.tlf.vo.PageResult;

import java.util.List;

public interface ItemService {
    List<Item> findAll();

    PageResult getItemList(PageResult pageResult);

    void saveItem(ItemVO itemVO);

    void updateStatus(Item item);
}
