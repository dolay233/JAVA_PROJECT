package com.tlf.pojo;

import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;
import lombok.experimental.Accessors;


@TableName("item_desc")
@Data
@Accessors(chain = true)
public class ItemDesc extends BasePojo{

    //要求:item和itemDesc一对一 id相同
    //    简化了外键约束!!!!
    @TableId
    private Integer id;
    private String itemDesc;

}
