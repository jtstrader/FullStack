package com.fullstack.connector.models;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

import javax.persistence.*;
import java.util.List;

@Entity(name = "product_proposals")
@JsonIgnoreProperties({"hibernateLazyInitializer", "handler"})
public class ProductProposal {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    Long proposal_id;

    String product_name;
    String product_description;

    @ManyToMany
    @JoinTable(
            name = "proposal_comment_join",
            joinColumns = @JoinColumn(name = "proposal_id"),
            inverseJoinColumns = @JoinColumn(name = "comment_id"))
    private List<Comment> comments;

    public ProductProposal() {
    }

    public Long getProposal_id() {
        return proposal_id;
    }

    public void setProposal_id(Long proposal_id) {
        this.proposal_id = proposal_id;
    }

    public String getProduct_name() {
        return product_name;
    }

    public void setProduct_name(String product_name) {
        this.product_name = product_name;
    }

    public String getProduct_description() {
        return product_description;
    }

    public void setProduct_description(String product_description) {
        this.product_description = product_description;
    }

    public List<Comment> getComments() {
        return comments;
    }

    public void setComments(List<Comment> comments) {
        this.comments = comments;
    }
}
