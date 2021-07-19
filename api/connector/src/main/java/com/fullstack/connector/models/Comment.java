package com.fullstack.connector.models;

import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

import javax.persistence.*;
import java.util.List;

@Entity(name = "proposal_comments")
@JsonIgnoreProperties({"hibernateLazyInitializer", "handler"})
public class Comment {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    Long comment_id;

    String comment_author;
    String comment_text;

    @ManyToMany(mappedBy = "comments")
    @JsonIgnore
    private List<ProductProposal> proposals;

    public Comment() {
    }

    public Long getComment_id() {
        return comment_id;
    }

    public void setComment_id(Long comment_id) {
        this.comment_id = comment_id;
    }

    public String getComment_author() {
        return comment_author;
    }

    public void setComment_author(String comment_author) {
        this.comment_author = comment_author;
    }

    public String getComment_text() {
        return comment_text;
    }

    public void setComment_text(String comment_text) {
        this.comment_text = comment_text;
    }

    public List<ProductProposal> getProposals() {
        return proposals;
    }

    public void setProposals(List<ProductProposal> proposals) {
        this.proposals = proposals;
    }
}
