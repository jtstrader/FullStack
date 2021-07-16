package com.fullstack.connector.repositories;

import com.fullstack.connector.models.Comment;
import org.springframework.data.jpa.repository.JpaRepository;

public interface ProposalCommentRepository extends JpaRepository<Comment, Long> {

}
