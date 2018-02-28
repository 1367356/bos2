package top.kylewang.crm.ServiceTest;


import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.ws.rs.Path;

@Service
public class TestInterfaceImpl {
    @Path("/customerServiceTest1")
    public String findFixedAreaIdByAddress() {
        return "hello";
    }
}
