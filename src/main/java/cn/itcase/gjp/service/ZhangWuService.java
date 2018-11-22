package cn.itcase.gjp.service;

import cn.itcase.gjp.domain.ZhangWu;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

/**
 * Administrator
 * 2018/11/22 0022
 */
public interface ZhangWuService {

 Page<ZhangWu> findList(Pageable pageable);
}
