package com.human.notice.controller;

import org.springframework.ui.Model;

public interface NoticeController {
    String listNotices(Model model) throws Exception;
}