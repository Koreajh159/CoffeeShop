package com.coffee.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.coffee.common.exception.DeleteFailException;
import com.coffee.common.exception.EditFailException;
import com.coffee.common.exception.RegistFailException;
import com.coffee.model.domain.Member;
import com.coffee.model.repository.MemberDAO;

@Service
public class MemberServiceImpl implements MemberService{
   @Autowired
   //@Qualifier("mybatisMemberDAO")
   private MemberDAO memberDAO;
   
   @Override
   public void insert(Member member) throws RegistFailException{
      int result=memberDAO.insert(member);
      if(result==0) {
         throw new RegistFailException("등록되지 않았습니다");
      }
   }

   @Override
   public List selectAll() {
      return memberDAO.selectAll();
   }

   @Override
   public Member select(int member_id) {
      return memberDAO.select(member_id);
   }

   @Override
   public void update(Member member) throws EditFailException{
      int result=memberDAO.update(member);
      if(result==0) {
         throw new EditFailException("수정되지 않았습니다");
      }
   }

   @Override
   public void updatePoint(Member member) {
      // TODO Auto-generated method stub
      
   }

   @Override
   public void delete(int member_id) throws DeleteFailException{
      int result=memberDAO.delete(member_id);
      if(result==0) {
         throw new DeleteFailException("삭제되지 않았습니다");
      }
   }

   @Override
   public Member logIn(Member member) {
      return memberDAO.logIn(member);
   }

   @Override
   public Member findId(Member member) {
      // TODO Auto-generated method stub
      return null;
   }

   @Override
   public Member findPass(Member member) {
      // TODO Auto-generated method stub
      return null;
   }

   @Override
   public boolean checkInfo(Member member) {
      // TODO Auto-generated method stub
      return false;
   }


   
}