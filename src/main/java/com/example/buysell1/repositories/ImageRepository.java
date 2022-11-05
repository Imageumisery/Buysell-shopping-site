package com.example.buysell1.repositories;

import com.example.buysell1.models.Image;
import org.springframework.data.jpa.repository.JpaRepository;

public interface ImageRepository extends JpaRepository <Image, Long> {
}
