package top.kylewang.crm.ServiceTest;

import javax.ws.rs.Consumes;
import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.QueryParam;

@Path("/customerServiceTest")
public interface TestInterface {
    /**
     * 根据地址查询定区id
//     * @param address
     * @return
     */
    @Path("/customer/hello")
    @GET
    @Consumes({"application/xml", "application/json"})
    String findFixedAreaIdByAddress();
}
