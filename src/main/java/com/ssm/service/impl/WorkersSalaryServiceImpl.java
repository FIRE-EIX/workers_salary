package com.ssm.service.impl;
import com.ssm.dao.WorkersSalaryMapper;
import com.ssm.entity.WorkersSalary;
import com.ssm.service.WorkersSalaryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import java.util.List;

@Service("WorkersSalaryServiceImpl")
public class WorkersSalaryServiceImpl implements WorkersSalaryService {
    @Autowired
    private WorkersSalaryMapper workersSalaryMapper;
    @Override
    public List<WorkersSalary> list() {
        return workersSalaryMapper.list();
    }

    @Override
    public int insert(WorkersSalary workersSalary){
        return workersSalaryMapper.insertSelective(workersSalary);
    }

    //É¾³ý
    @Override
    public int delete(String number,Integer month){
        return workersSalaryMapper.deleteByPrimaryKey(number,month);
    }

    //ÐÞ¸Ä
    @Override
    public WorkersSalary find(String number,Integer month) {
        return workersSalaryMapper.selectByPrimaryKey(number,month);
    }
    @Override
    public  int update(WorkersSalary workersSalary) {
        return workersSalaryMapper.updateByPrimaryKey(workersSalary);
    }
    @Override
    public List<WorkersSalary> login(String number,String pwd){
        return workersSalaryMapper.login(number, pwd);
    }
    @Override
    public List<WorkersSalary> search(String number){
        return workersSalaryMapper.search(number);
    }
    @Override
    public List<WorkersSalary> findByName(String name){
        return workersSalaryMapper.findByName(name);
    }
    @Override
    public List<WorkersSalary> findByMonth(Integer month){
        return workersSalaryMapper.findByMonth(month);
    }
    @Override
    public List<WorkersSalary> findByHisMonth(String name, Integer month){
        return workersSalaryMapper.findByHisMonth(name,month);
    }
    @Override
    public int updatePassword(String number, String pwd){
        return workersSalaryMapper.updatePassword(number,pwd);
    }
}
