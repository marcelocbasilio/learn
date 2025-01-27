package com.marcelocbasilio.learn.entities;

import jakarta.persistence.*;

import java.io.Serializable;
import java.util.*;

@Entity
@Table(name = "tb_lesson")
@Inheritance(strategy = InheritanceType.JOINED)
public abstract class Lesson implements Serializable {

    private static final long serialVersionUID = 1L;
    @ManyToMany
    @JoinTable(name = "tb_lessons_done", joinColumns = @JoinColumn(name = "lesson_id"), inverseJoinColumns = {@JoinColumn(name = "user_id"), @JoinColumn(name = "offer_id")})
    private final Set<Enrollment> enrollmentsDone = new HashSet<>();
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private String title;
    private Integer position;
    @ManyToOne
    @JoinColumn(name = "section_id")
    private Section section;

    @OneToMany(mappedBy = "lesson")
    private final List<Deliver> deliveries = new ArrayList<>();

    public Lesson() {
    }

    public Lesson(Long id, String title, Integer position, Section section) {
        this.id = id;
        this.title = title;
        this.position = position;
        this.section = section;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public Integer getPosition() {
        return position;
    }

    public void setPosition(Integer position) {
        this.position = position;
    }

    public Section getSection() {
        return section;
    }

    public void setSection(Section section) {
        this.section = section;
    }

    public Set<Enrollment> getEnrollmentsDone() {
        return enrollmentsDone;
    }

    public List<Deliver> getDeliveries() {
        return deliveries;
    }

    @Override
    public boolean equals(Object o) {
        if (o == null || getClass() != o.getClass()) return false;

        Lesson lesson = (Lesson) o;
        return Objects.equals(id, lesson.id);
    }

    @Override
    public int hashCode() {
        return Objects.hashCode(id);
    }

    @Override
    public String toString() {
        return "Lesson{" +
               "id=" + id +
               ", title='" + title + '\'' +
               ", position=" + position +
               ", section=" + section +
               ", enrollmentsDone=" + enrollmentsDone +
               '}';
    }
}
