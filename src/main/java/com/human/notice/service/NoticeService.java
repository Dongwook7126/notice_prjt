package com.human.notice.service;

import com.human.notice.vo.NoticeVO;

import java.util.List;

public interface NoticeService {
    List<NoticeVO> listNotices() throws Exception;
}