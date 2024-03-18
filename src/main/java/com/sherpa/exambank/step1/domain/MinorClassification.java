package com.sherpa.exambank.step1.domain;


import java.util.Objects;

public class MinorClassification {
    private String subject;
    private String large;
    private String medium;
    private String small;
    private String topic;

    public String getSubject() {
        return subject;
    }

    public void setSubject(String subject) {
        this.subject = subject;
    }

    public String getLarge() {
        return large;
    }

    public void setLarge(String large) {
        this.large = large;
    }

    public String getMedium() {
        return medium;
    }

    public void setMedium(String medium) {
        this.medium = medium;
    }

    public String getSmall() {
        return small;
    }

    public void setSmall(String small) {
        this.small = small;
    }

    public String getTopic() {
        return topic;
    }

    public void setTopic(String topic) {
        this.topic = topic;
    }

    public MinorClassification() {
    }

    public MinorClassification(String subject, String large, String medium, String small, String topic) {
        this.subject = subject;
        this.large = large;
        this.medium = medium;
        this.small = small;
        this.topic = topic;
    }

    @Override
    public String toString() {
        return "MinorClassification{" +
                "subject=" + subject +
                ", large=" + large +
                ", medium=" + medium +
                ", small=" + small +
                ", topic=" + topic +
                '}';
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        MinorClassification that = (MinorClassification) o;
        return Objects.equals(subject, that.subject) && Objects.equals(large, that.large) && Objects.equals(medium, that.medium) && Objects.equals(small, that.small) && Objects.equals(topic, that.topic);
    }

    @Override
    public int hashCode() {
        return Objects.hash(subject, large, medium, small, topic);
    }
}
