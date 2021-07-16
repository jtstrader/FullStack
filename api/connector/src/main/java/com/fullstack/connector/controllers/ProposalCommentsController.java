package com.fullstack.connector.controllers;

import com.fullstack.connector.models.Comment;
import com.fullstack.connector.models.ProposalCommentJoin;
import com.fullstack.connector.repositories.ProductProposalRepository;
import com.fullstack.connector.repositories.ProposalCommentJoinRepository;
import com.fullstack.connector.repositories.ProposalCommentRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/v1/comments")
public class ProposalCommentsController {
    @Autowired
    private ProposalCommentRepository proposalCommentRepository;

    @Autowired
    private ProposalCommentJoinRepository proposalCommentJoinRepository;

    @GetMapping
    public List<Comment> list() {
        return proposalCommentRepository.findAll();
    }

    @GetMapping
    @RequestMapping("{id}")
    public Comment get(@PathVariable Long id) {
        return proposalCommentRepository.getById(id);
    }

    @PostMapping
    public Comment create(@RequestBody final Comment comment) {
        return proposalCommentRepository.saveAndFlush(comment);
    }

    @PostMapping
    @RequestMapping("/proposal/{proposal_id}")
    public Comment postNew(@PathVariable Long proposal_id, @RequestBody final Comment comment) {
        Comment posted_comment = proposalCommentRepository.saveAndFlush(comment);
        proposalCommentJoinRepository.saveAndFlush(new ProposalCommentJoin(proposal_id, posted_comment.getComment_id()));
        return posted_comment;
    }
}
