package com.fullstack.connector.models;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity(name = "proposal_comment_join")
@JsonIgnoreProperties({"hibernateLazyInitializer", "handler"})
public class ProposalCommentJoin {
    @Id
    Long comment_id;
    Long proposal_id;

    public ProposalCommentJoin() {
    }

    public ProposalCommentJoin(Long proposal_id, Long comment_id) {
        this.proposal_id = proposal_id;
        this.comment_id = comment_id;
    }

    public Long getProposal_id() {
        return proposal_id;
    }

    public void setProposal_id(Long proposal_id) {
        this.proposal_id = proposal_id;
    }

    public Long getComment_id() {
        return comment_id;
    }

    public void setComment_id(Long comment_id) {
        this.comment_id = comment_id;
    }
}
