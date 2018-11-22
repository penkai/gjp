package cn.itcase.gjp.domain;

import lombok.Data;
import org.hibernate.annotations.DynamicUpdate;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import java.math.BigDecimal;
import java.util.Date;

/**
 * Administrator
 * 2018/11/22 0022
 * 账务类
 */
@Entity
@Data
@DynamicUpdate
public class ZhangWu {


    //id
    @Id
    @GeneratedValue
    private Integer zwId;
    //分类名称
    private String flname;
    //账户金额
    private BigDecimal money;
    //账户名称
    private String zhangHu;
    //账户说明
    private String description;
    //时间
    private Date createtime;




}
