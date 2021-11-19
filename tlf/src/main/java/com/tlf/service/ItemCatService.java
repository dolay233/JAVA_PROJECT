package com.tlf.service;

import com.tlf.pojo.ItemCat;

import java.util.List;

public interface ItemCatService {
    List<ItemCat> getAll();

    List<ItemCat> findItemCatList(Integer level);

    void updateStatus(ItemCat itemCat);

    void saveItemCat(ItemCat itemCat);

    void updateItemCat(ItemCat itemCat);

    void deleteItemCats(ItemCat itemCat);
}
