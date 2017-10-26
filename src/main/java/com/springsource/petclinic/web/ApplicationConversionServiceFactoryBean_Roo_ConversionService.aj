// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.springsource.petclinic.web;

import com.springsource.petclinic.domain.Owner;
import com.springsource.petclinic.domain.Pet;
import com.springsource.petclinic.domain.Vet;
import com.springsource.petclinic.domain.Visit;
import com.springsource.petclinic.web.ApplicationConversionServiceFactoryBean;
import org.springframework.beans.factory.annotation.Configurable;
import org.springframework.core.convert.converter.Converter;
import org.springframework.format.FormatterRegistry;

privileged aspect ApplicationConversionServiceFactoryBean_Roo_ConversionService {
    
    declare @type: ApplicationConversionServiceFactoryBean: @Configurable;
    
    public Converter<Owner, String> ApplicationConversionServiceFactoryBean.getOwnerToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<com.springsource.petclinic.domain.Owner, java.lang.String>() {
            public String convert(Owner owner) {
                return new StringBuilder().append(owner.getFirstName()).append(' ').append(owner.getLastName()).append(' ').append(owner.getAddress()).append(' ').append(owner.getCity()).toString();
            }
        };
    }
    
    public Converter<Long, Owner> ApplicationConversionServiceFactoryBean.getIdToOwnerConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.Long, com.springsource.petclinic.domain.Owner>() {
            public com.springsource.petclinic.domain.Owner convert(java.lang.Long id) {
                return Owner.findOwner(id);
            }
        };
    }
    
    public Converter<String, Owner> ApplicationConversionServiceFactoryBean.getStringToOwnerConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, com.springsource.petclinic.domain.Owner>() {
            public com.springsource.petclinic.domain.Owner convert(String id) {
                return getObject().convert(getObject().convert(id, Long.class), Owner.class);
            }
        };
    }
    
    public Converter<Pet, String> ApplicationConversionServiceFactoryBean.getPetToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<com.springsource.petclinic.domain.Pet, java.lang.String>() {
            public String convert(Pet pet) {
                return new StringBuilder().append(pet.getName()).append(' ').append(pet.getWeight()).toString();
            }
        };
    }
    
    public Converter<Long, Pet> ApplicationConversionServiceFactoryBean.getIdToPetConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.Long, com.springsource.petclinic.domain.Pet>() {
            public com.springsource.petclinic.domain.Pet convert(java.lang.Long id) {
                return Pet.findPet(id);
            }
        };
    }
    
    public Converter<String, Pet> ApplicationConversionServiceFactoryBean.getStringToPetConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, com.springsource.petclinic.domain.Pet>() {
            public com.springsource.petclinic.domain.Pet convert(String id) {
                return getObject().convert(getObject().convert(id, Long.class), Pet.class);
            }
        };
    }
    
    public Converter<Vet, String> ApplicationConversionServiceFactoryBean.getVetToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<com.springsource.petclinic.domain.Vet, java.lang.String>() {
            public String convert(Vet vet) {
                return new StringBuilder().append(vet.getFirstName()).append(' ').append(vet.getLastName()).append(' ').append(vet.getAddress()).append(' ').append(vet.getCity()).toString();
            }
        };
    }
    
    public Converter<Long, Vet> ApplicationConversionServiceFactoryBean.getIdToVetConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.Long, com.springsource.petclinic.domain.Vet>() {
            public com.springsource.petclinic.domain.Vet convert(java.lang.Long id) {
                return Vet.findVet(id);
            }
        };
    }
    
    public Converter<String, Vet> ApplicationConversionServiceFactoryBean.getStringToVetConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, com.springsource.petclinic.domain.Vet>() {
            public com.springsource.petclinic.domain.Vet convert(String id) {
                return getObject().convert(getObject().convert(id, Long.class), Vet.class);
            }
        };
    }
    
    public Converter<Visit, String> ApplicationConversionServiceFactoryBean.getVisitToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<com.springsource.petclinic.domain.Visit, java.lang.String>() {
            public String convert(Visit visit) {
                return new StringBuilder().append(visit.getDescription()).append(' ').append(visit.getVisitDate()).toString();
            }
        };
    }
    
    public Converter<Long, Visit> ApplicationConversionServiceFactoryBean.getIdToVisitConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.Long, com.springsource.petclinic.domain.Visit>() {
            public com.springsource.petclinic.domain.Visit convert(java.lang.Long id) {
                return Visit.findVisit(id);
            }
        };
    }
    
    public Converter<String, Visit> ApplicationConversionServiceFactoryBean.getStringToVisitConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, com.springsource.petclinic.domain.Visit>() {
            public com.springsource.petclinic.domain.Visit convert(String id) {
                return getObject().convert(getObject().convert(id, Long.class), Visit.class);
            }
        };
    }
    
    public void ApplicationConversionServiceFactoryBean.installLabelConverters(FormatterRegistry registry) {
        registry.addConverter(getOwnerToStringConverter());
        registry.addConverter(getIdToOwnerConverter());
        registry.addConverter(getStringToOwnerConverter());
        registry.addConverter(getPetToStringConverter());
        registry.addConverter(getIdToPetConverter());
        registry.addConverter(getStringToPetConverter());
        registry.addConverter(getVetToStringConverter());
        registry.addConverter(getIdToVetConverter());
        registry.addConverter(getStringToVetConverter());
        registry.addConverter(getVisitToStringConverter());
        registry.addConverter(getIdToVisitConverter());
        registry.addConverter(getStringToVisitConverter());
    }
    
    public void ApplicationConversionServiceFactoryBean.afterPropertiesSet() {
        super.afterPropertiesSet();
        installLabelConverters(getObject());
    }
    
}
