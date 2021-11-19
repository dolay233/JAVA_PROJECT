package com.tlf.vo;

import com.tlf.pojo.Item;
import com.tlf.pojo.ItemDesc;
import com.tlf.pojo.ItemParam;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.experimental.Accessors;


@Data
@Accessors(chain = true)
@NoArgsConstructor
@AllArgsConstructor
public class ItemVO {  //该对象封装商品所有的参数信息
    private Item item;
    private ItemDesc itemDesc;
    private ItemParam itemParam;
}
