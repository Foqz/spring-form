package com.kamil.spring.validation;

import javax.validation.Constraint;
import javax.validation.Payload;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

@Constraint(validatedBy = CourseCodeConstraintValidator.class)
@Target({ElementType.METHOD, ElementType.FIELD})
@Retention(RetentionPolicy.RUNTIME)
public @interface CourceCode {
    public String value() default "KAM";

    public String message() default "must start with KAM";

    public Class<?>[] groups() default {};

    public Class<? extends Payload>[] payload() default {};
}
