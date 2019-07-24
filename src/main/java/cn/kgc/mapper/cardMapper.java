package cn.kgc.mapper;

import cn.kgc.pojo.card;
import cn.kgc.pojo.cardExample;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface cardMapper {
    long countByExample(cardExample example);

    int deleteByExample(cardExample example);

    int insert(card record);

    int insertSelective(card record);

    List<card> selectByExample(cardExample example);

    int updateByExampleSelective(@Param("record") card record, @Param("example") cardExample example);

    int updateByExample(@Param("record") card record, @Param("example") cardExample example);
}