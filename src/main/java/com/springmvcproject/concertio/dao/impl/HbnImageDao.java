package com.springmvcproject.concertio.dao.impl;

import org.springframework.stereotype.Repository;

import com.springmvcproject.concertio.dao.Dao;
import com.springmvcproject.concertio.models.Image;


@Repository("imageDao")
public class HbnImageDao extends AbstractHbnDao<Image> implements Dao<Image> {

}
