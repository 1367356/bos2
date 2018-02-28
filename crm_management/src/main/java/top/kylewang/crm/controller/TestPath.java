package top.kylewang.crm.controller;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.ws.rs.Consumes;
import javax.ws.rs.GET;
import javax.ws.rs.Path;

@Path("path")
@Service
@Transactional(rollbackFor = Exception.class)
public class TestPath {
    @Path("/p1")
    @GET
    @Consumes({"application/xml", "application/json"})
    public String getString() {
        return "path";
    }
}
