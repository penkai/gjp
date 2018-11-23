package cn.itcase.gjp.service.imp;


import cn.itcase.gjp.domain.ZhangWu;
import cn.itcase.gjp.repository.ZhangWuRepository;
import cn.itcase.gjp.service.ZhangWuService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;



/**
 * Administrator
 * 2018/11/22 0022
 */
@Service
public class ZhangWuServiceImpl implements ZhangWuService {

    @Autowired
    private ZhangWuRepository zhangWuRepository;
    @Override
    public Page<ZhangWu> findList(Pageable pageable) {

        Page<ZhangWu> zhangWuPage= zhangWuRepository.findAll(pageable);
        return zhangWuPage;
    }

    @Override
    public void save(ZhangWu zhangWu) {
        zhangWuRepository.save(zhangWu);
    }
}
