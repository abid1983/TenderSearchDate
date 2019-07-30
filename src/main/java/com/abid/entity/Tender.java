package com.abid.entity;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.NamedStoredProcedureQueries;
import javax.persistence.NamedStoredProcedureQuery;
import javax.persistence.ParameterMode;
import javax.persistence.StoredProcedureParameter;

@Entity
@NamedStoredProcedureQueries({
@NamedStoredProcedureQuery(name = "daysbtwnIFTContract", 
      procedureName = "sp_pi_daysbtwnIFTContract1",
      parameters = {
      @StoredProcedureParameter(mode = ParameterMode.IN, name = "startdate", type = String.class),
      @StoredProcedureParameter(mode = ParameterMode.IN, name = "enddate", type = String.class),
      @StoredProcedureParameter(mode = ParameterMode.IN, name = "orgID", type = Integer.class),
      @StoredProcedureParameter(mode = ParameterMode.IN, name = "PEOffice", type = Integer.class)})
})

