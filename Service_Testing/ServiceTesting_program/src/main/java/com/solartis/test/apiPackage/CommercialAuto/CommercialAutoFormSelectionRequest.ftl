<#assign array=[]><#list NoOfState1 as x><#assign array=array+[x.value]></#list><#assign i=0>
 {
 	<#assign InsuredLevels="InsuredLevel1"><#list InsuredLevels?eval as result>     
        "${result.atrib}":"${result.value}",
        </#list> 
 	"State": [
 	<#list 1..array[i] as x> 
    {
    <#assign States="State"+x><#list States?eval as result>     
        "${result.atrib}":"${result.value}",
        </#list> 
    "AddedPersonalInjuryProtection": [
        {
          "AddedPersonalInjuryProtectionDetail": {
           "CommercialAutoAddedPersonalInjuryProtectionDetail.IncreaseLimitsOfMedicalExpenseBenefit": "",            
            "FamilyMembersName": "1"
          },
                    "AddedPIPCoverageType": "",
                    "AddedPIPNamedInsureds": ""
        }
      ],
      
      "BusinessInterruptionCoverage": [
        {
          "BusinessIncomeCoverageType": "Business Income Without Extra Expense Coverage",
          "BusinessInterruptionCoverageDetail": [
            {
              "Limit": "500",
              "MaxAmtOfBusnsIncmLossAfterRepdOrRepld": "500",
              "MaximumAmountOfExtraExpense": "500",
              "MaxiumumAmountOfBusinessIncomeLoss": "500",
              "ScheduledPropertyOption": "Option A"
            }
          ],
          "DurationOfWaitingPeriod": "No waiting period",
          "LocationNumber": "2",
          "NumberOfDays": "90"
        }
      ],
      "TrailerInterchangeAgreement": [
        {
          "TrailerInterchangeAgreementDetail": [
            {
              <#assign TrailerInterchanges="TrailerInterchange"+x><#list TrailerInterchanges?eval as result>     
        	"${result.atrib}":"${result.value}"<#if result?is_last><#else>,</#if>
        	</#list> 
            }
          ]
        }
      ],
      "CommercialAutoNamedIndividualsBroadenedPersonalInjuryProtectionCoverage": [
        {
          "CommercialAutoNamedIndividualsBroadenedPersonalInjuryProtectionCoverageDetail": [
            {
              <#assign NamedIndividualss="NamedIndividuals"+x><#list NamedIndividualss?eval as result>     
        	"${result.atrib}":"${result.value}"<#if result?is_last><#else>,</#if>
        	</#list>
        	}
          ],
           "LocationNumber": "1"
        }
      ],
      "CommercialAutoScheduleRatingModificationList": [
                {
                    "ScheduleRatingModificationDispersionPctPhysicalDamage": "41%",
                    "ScheduleRatingModificationEmployeesPct": "41%",
                    "ScheduleRatingModificationEmployeesPctPhysicalDamage": "41%",
                    "ScheduleRatingModificationEquipmentPct": "41%",
                    "ScheduleRatingModificationEquipmentPctPhysicalDamage": "41%",
                    "ScheduleRatingModificationManagementPct": "41%",
                    "ScheduleRatingModificationManagementPctPhysicalDamage": "41%",
                    "ScheduleRatingModificationSafetyOrganizationPct": "41%",
                    "ScheduleRatingModificationSafetyOrganizationPctPhysicalDamage": "41%"
                }
            ],
      "CommercialAutoDriveOtherCarCovBroadenedCovForNamedIndividuals": [
        {
          "CommercialAutoDriveOtherCarCovBroadenedCovForNamedIndividualsDetail": [
            {
              <#assign DriveOtherCars="DriveOtherCar"+x><#list DriveOtherCars?eval as result>     
        	"${result.atrib}":"${result.value}"<#if result?is_last><#else>,</#if>
        	</#list> 
              }
          ],
          "CommercialAutoDriveOtherCarCovBroadenedCovForNamedIndividualsSubjectToNoFault": "Yes",
          "LocationNumber": "1"
        }
      ],
      "CommercialAutoExperienceRatingModificationList": [
                {
                    "ActualLiabilityExpectedLossRatio": "0",
                    "ActualPhysicalDamageExpectedLossRatio": "0",
                    "CommercialAutoExperienceRatingModificationYear1DetailList": [
                        {
                            "ExperienceRatingModificationYear1DetailLiabilityAllocatedLossAdjustmentExpense": "1000",
                            "ExperienceRatingModificationYear1DetailLiabilityIndemnity": "100000",
                            "ExperienceRatingModificationYear1DetailPhysicalDamageIndemnity": "100000"
                        }
                    ],
                    "CommercialAutoExperienceRatingModificationYear2DetailList": [
                        {
                            "ExperienceRatingModificationYear2DetailLiabilityAllocatedLossAdjustmentExpense": "1500",
                            "ExperienceRatingModificationYear2DetailLiabilityIndemnity": "100000",
                            "ExperienceRatingModificationYear2DetailPhysicalDamageIndemnity": "100000"
                        }
                    ],
                    "CommercialAutoExperienceRatingModificationYear3DetailList": [
                        {
                            "ExperienceRatingModificationYear3DetailLiabilityAllocatedLossAdjustmentExpense": "3000",
                            "ExperienceRatingModificationYear3DetailLiabilityIndemnity": "100000",
                            "ExperienceRatingModificationYear3DetailPhysicalDamageIndemnity": "100000"
                        }
                    ],
                    "ExpenseVariationApplies": "No",
                    "ExperienceModificationLiabilityOverride": "0",
                    "ExperienceModificationPhysicalDamagesOverride": "0",
                    "LossDevelopmentFactorOverrideYear1": "",
                    "LossDevelopmentFactorOverrideYear2": "",
                    "LossDevelopmentFactorOverrideYear3": "",
                    "Year1EffectiveDate": "2018-01-01",
                    "Year1LatestValuationDate": "2020-01-01",
                    "Year2EffectiveDate": "2017-01-01",
                    "Year2LatestValuationDate": "2019-01-01",
                    "Year3EffectiveDate": "2016-01-01",
                    "Year3LatestValuationDate": "2018-01-01"
                }
            ],
      "CommercialAutoPennsylvaniaNamedIndividualsBroadenedFirstPartyBenefits": [
        {
          "CommercialAutoPennsylvaniaNamedIndividualsBroadenedFirstPartyBenefitsDetail": {
            "AccidentalDeathBenefit": "",
            "CombinationFirstPartyBenefit": "",
            "CoverageType": "",
            "FuneralExpenseBenefit": "",
            "LocationNumber": "",
            "MedicalExpenseBenefit": "",
            "WorkLossBenefit": ""
          }
        }
      ],
      "Garage": [
                {
                    "GarageDetail": {
                        "AddressLine1": "8TH ST",
                        "AddressLine2": "PHOENIX",
                        "City": "Waldorf",
                        "County": "Surry",
                        "GarageClassCode": "7361",
                        "GarageCoverageType": "Full Covered Autos Liability Limit For Customers Coverage",
                        "GarageNumberOfOfficersAndOperatorsFullTime": "5",
                        "GarageNumberOfOfficersAndOperatorsPartTime": "10",
                        "GarageNumberOfOtherEmployeesFullTime": "1",
                        "GarageNumberOfOtherEmployeesPartTime": "2",
                        "NoOfVehicles": "1",
                        "State": "RI",
                        "Territory": "117",
                        "VehicleType": "Garage",
                        "ZipCode": "85001"
                    }
                }
            ],
      "CommercialAutoGaragekeepersCoverage": [
        {
        "CommercialAutoGaragekeepersCovOtherThanCollisionCoverageAllPerilsDeductible": "Yes",
          "CommercialAutoGaragekeepersCov.ValetParking": "Yes",
                    "CommercialAutoGaragekeepersCovCollisionCoverage.CoverageType": "No Coverage",
                   "LocationNumber": "1",
          "CommercialAutoGaragekeepersCovOtherThanCollisionCoverageCoverageType": "Comprehensive",
          "CommercialAutoGaragekeepersCovRatingBase": "Direct (Excess)",
          "CommercialAutoGaragekeepersCovCollisionCoverageDeductible": "100",
          "CommercialAutoGaragekeepersCovCollisionCoverageLimit": "6000",
          "CommercialAutoGaragekeepersCovOtherThanCollisionCoverageDeductible": "100 / 500",
          "CommercialAutoGaragekeepersCovOtherThanCollisionCoverageLimit": "6000"
         
          
        }
      ],
      "CommercialAutoLeasingOrRentalConcernsContingentCoverageList": [
                {
                    "LesseeLiabilityPremium": "5"
                }
            ],
      "CommercialAutoGaragekeepersCovCustomersSoundReceivingEquipment": [
        {
          <#assign GaragekeepersCovCustomers="GaragekeepersCovCustomer"+x><#list GaragekeepersCovCustomers?eval as result>     
        	"${result.atrib}":"${result.value}",
        	</#list>
          "CommercialAutoGaragekeepersCovCustomersSoundReceivingEquipmentDetail": [
            {
              "CommercialAutoGaragekeepersCovCustomersSoundReceivingEquipmentCollisionCoverageManualPremium": "200",
              "CommercialAutoGaragekeepersCovCustomersSoundReceivingEquipmentOtherThanCollisionCoverageManualPremium": "600",
              "CommercialAutoGaragekeepersCovCustomersSoundReceivingEquipmentCollisionCoverageDeductible": "100",
              "CommercialAutoGaragekeepersCovCustomersSoundReceivingEquipmentCollisionCoverageLimit": "7500",
               "LocationNumber": "2",
               "CommercialAutoGaragekeepersCovCustomersSoundReceivingEquipmentCollisionCoverageCoverageType": "",
        "CommercialAutoGaragekeepersCovCustomersSoundReceivingEquipmentOtherThanCollisionCoverageCoverageType": "",                      
          
              "CommercialAutoGaragekeepersCovCustomersSoundReceivingEquipmentOtherThanCollisionCoverageDeductible": "100 / 500",
              "CommercialAutoGaragekeepersCovCustomersSoundReceivingEquipmentOtherThanCollisionCoverageLimit": "7500"
            }
          ]
        }
      ],
      "Truck": [
        {
          "TruckDetail": {
            "LocationNumber": "1",
            "TruckFirstOrAdditionalAuto": "Additional Auto",
             "VehicleNumber": "1",
            "AudioVisualAndDataElectronicEquipmentCoverageList": [
              {
                "AudioVisualAndDataElectronicEquipmentCoverageLimit": "500",
                "CostNew": "500"
              }
            ],
            "CommercialAutoAutoLoanLeaseGapCovList": [
                    {
                        "CommercialAutoAutoLoanLeaseGapCovCollisionCoverage.CollisionCoverage": "Yes",
                        "CommercialAutoAutoLoanLeaseGapCovOtherThanCollisionCoverage.OtherThanCollisionCoverage": "Yes"
                    }
                ],
            "CommercialAutoAdditionalPersonalInjuryProtectionNewYorkList": [
              {
                "AdditionalPersonalInjuryProtectionNewYorkAddedCoverage_AdditionalMonthlyWorkLoss": "Not Applicable",
                "AdditionalPersonalInjuryProtectionNewYorkAddedCoverage_CoverageType": "Not Applicable",
                "AdditionalPersonalInjuryProtectionNewYorkAddedCoverage_OtherExpensesLimit": "Not Applicable",
                "AdditionalPersonalInjuryProtectionNewYorkAddedCoverage_TotalAdditionalLimits": "Not Applicable",
                "AdditionalPersonalInjuryProtectionNewYorkDeathBenefitCoverage_AdditionalDeathBenefit": "Not Applicable",
                "AdditionalPersonalInjuryProtectionNewYorkDeathBenefitCoverage_Limit": "Not Applicable"
              }
            ],

            "CommercialAutoRentalReimbursementCovList": [
              {
                "DailyRentalAmount": "55",
                "MaximumRentalDays": "45"
              }
            ],
            <#assign TruckLevels="TruckLevel"+x><#list TruckLevels?eval as result>     
        	"${result.atrib}":"${result.value}"<#if result?is_last><#else>,</#if>
        	</#list> 
            }
        }
      ],
      
      "PrivatePassenger": [
        {
          "PrivatePassengerDetail": {
           "LocationNumber": "1",
           "PrivatePassengerFirstOrAdditionalAuto": "Additional Auto",
           "VehicleNumber": "1",
          "AudioVisualAndDataElectronicEquipmentCoverageList": [
              {
                "AudioVisualAndDataElectronicEquipmentCoverageLimit": "500",
                "CostNew": "500"
              }
            ],
            "CommercialAutoAdditionalPersonalInjuryProtectionNewYorkList": [
              {
                "AdditionalPersonalInjuryProtectionNewYorkAddedCoverage_AdditionalMonthlyWorkLoss": "Not Applicable",
                "AdditionalPersonalInjuryProtectionNewYorkAddedCoverage_CoverageType": "Not Applicable",
                "AdditionalPersonalInjuryProtectionNewYorkAddedCoverage_OtherExpensesLimit": "Not Applicable",
                "AdditionalPersonalInjuryProtectionNewYorkAddedCoverage_TotalAdditionalLimits": "Not Applicable",
                "AdditionalPersonalInjuryProtectionNewYorkDeathBenefitCoverage_AdditionalDeathBenefit": "Not Applicable",
                "AdditionalPersonalInjuryProtectionNewYorkDeathBenefitCoverage_Limit": "Not Applicable"
              }
            ],
            "CommercialAutoAutoLoanLeaseGapCovList": [
                    {
                        "CommercialAutoAutoLoanLeaseGapCovCollisionCoverage.CollisionCoverage": "Yes",
                        "CommercialAutoAutoLoanLeaseGapCovOtherThanCollisionCoverage.OtherThanCollisionCoverage": "Yes"
                    }
                ],
                  "CommercialAutoWashingtonAutoLoanCoverageGapCovList": [
                    {
                        "CommercialAutoAutoLoanLeaseGapCovCollisionCoverage.CollisionCoverage": "Yes",
                        "CommercialAutoAutoLoanLeaseGapCovOtherThanCollisionCoverage.OtherThanCollisionCoverage": "Yes"
                    }
                ],
            "CommercialAutoRentalReimbursementCovList": [
              {
                "DailyRentalAmount": "55",
                "MaximumRentalDays": "45"
              }
            ],
            <#assign PrivatePassengerLevels="PrivatePassengerLevel"+x><#list PrivatePassengerLevels?eval as result>     
        	"${result.atrib}":"${result.value}"<#if result?is_last><#else>,</#if>
        	</#list>  
            }
        }
      ],
      "PublicTransportation": [
        {
          "PublicTransportationDetail": {
           "LocationNumber": "1",
            "PublicTransportationFirstOrAdditionalAuto": "Additional Auto",
            "VehicleNumber": "1",
            "AudioVisualAndDataElectronicEquipmentCoverageList": [
              {
                "AudioVisualAndDataElectronicEquipmentCoverageLimit": "500",
                "CostNew": "500"
              }
            ],
             "CommercialAutoAutoLoanLeaseGapCovList": [
                    {
                        "CommercialAutoAutoLoanLeaseGapCovCollisionCoverage.CollisionCoverage": "Yes",
                        "CommercialAutoAutoLoanLeaseGapCovOtherThanCollisionCoverage.OtherThanCollisionCoverage": "Yes"
                    }
                ],
            "CommercialAutoAdditionalPersonalInjuryProtectionNewYorkList": [
              {
                "AdditionalPersonalInjuryProtectionNewYorkAddedCoverage_AdditionalMonthlyWorkLoss": "Not Applicable",
                "AdditionalPersonalInjuryProtectionNewYorkAddedCoverage_CoverageType": "Not Applicable",
                "AdditionalPersonalInjuryProtectionNewYorkAddedCoverage_OtherExpensesLimit": "Not Applicable",
                "AdditionalPersonalInjuryProtectionNewYorkAddedCoverage_TotalAdditionalLimits": "Not Applicable",
                "AdditionalPersonalInjuryProtectionNewYorkDeathBenefitCoverage_AdditionalDeathBenefit": "Not Applicable",
                "AdditionalPersonalInjuryProtectionNewYorkDeathBenefitCoverage_Limit": "Not Applicable"
              }
            ],
             
            "CommercialAutoRentalReimbursementCovList": [
              {
                "DailyRentalAmount": "55",
                "MaximumRentalDays": "45"
              }
            ],
            <#assign PublicTransportationLevels="PublicTransportationLevel"+x><#list PublicTransportationLevels?eval as result>     
        	"${result.atrib}":"${result.value}"<#if result?is_last><#else>,</#if>
        	</#list>    
             }
        }
      ],
      "ZoneRated": [
        {
          "ZoneRatedDetail": {
          "LocationNumber": "1",
          "VehicleNumber": "1",
          "ZoneRatedFirstOrAdditionalAuto": "Additional Auto",
          "AudioVisualAndDataElectronicEquipmentCoverageList": [
              {
                "AudioVisualAndDataElectronicEquipmentCoverageLimit": "500",
                "CostNew": "500"
              }
            ],
            "CommercialAutoAutoLoanLeaseGapCovList": [
                    {
                        "CommercialAutoAutoLoanLeaseGapCovCollisionCoverage.CollisionCoverage": "Yes",
                        "CommercialAutoAutoLoanLeaseGapCovOtherThanCollisionCoverage.OtherThanCollisionCoverage": "Yes"
                    }
                ],
            "CommercialAutoAdditionalPersonalInjuryProtectionNewYorkList": [
              {
                "AdditionalPersonalInjuryProtectionNewYorkAddedCoverage_AdditionalMonthlyWorkLoss": "Not Applicable",
                "AdditionalPersonalInjuryProtectionNewYorkAddedCoverage_CoverageType": "Not Applicable",
                "AdditionalPersonalInjuryProtectionNewYorkAddedCoverage_OtherExpensesLimit": "Not Applicable",
                "AdditionalPersonalInjuryProtectionNewYorkAddedCoverage_TotalAdditionalLimits": "Not Applicable",
                "AdditionalPersonalInjuryProtectionNewYorkDeathBenefitCoverage_AdditionalDeathBenefit": "Not Applicable",
                "AdditionalPersonalInjuryProtectionNewYorkDeathBenefitCoverage_Limit": "Not Applicable"
              }
            ],
            "CommercialAutoRentalReimbursementCovList": [
              {
                "DailyRentalAmount": "55",
                "MaximumRentalDays": "45"
              }
            ],
            <#assign ZoneRatedLevels="ZoneRatedLevel"+x><#list ZoneRatedLevels?eval as result>     
        	"${result.atrib}":"${result.value}"<#if result?is_last><#else>,</#if>
        	</#list>   
            }
        }
      ],
      "Special": [
        {
          "SpecialDetail": {
          "LocationNumber": "1",
          "SpecialTypesFirstOrAdditionalAuto": "Additional Auto",
          "SpecialTypesLiabilityCoverageTortLimitation": "",
          "AudioVisualAndDataElectronicEquipmentCoverageList": [
              {
                "AudioVisualAndDataElectronicEquipmentCoverageLimit": "500",
                "CostNew": "500"
              }
            ],
             "CommercialAutoAutoLoanLeaseGapCovList": [
                    {
                        "CommercialAutoAutoLoanLeaseGapCovCollisionCoverage.CollisionCoverage": "Yes",
                        "CommercialAutoAutoLoanLeaseGapCovOtherThanCollisionCoverage.OtherThanCollisionCoverage": "Yes"
                    }
                ],
                "CommercialAutoMobileHomesContentsCovList": [
                    {
                        "CoverageType": "Stated Amount - Specified Causes of Loss",
                        "Deductible": "",
                        "Limit": "10001"
                    }
                ],
            "CommercialAutoAdditionalPersonalInjuryProtectionNewYorkList": [
              {
                "AdditionalPersonalInjuryProtectionNewYorkAddedCoverage_AdditionalMonthlyWorkLoss": "Not Applicable",
                "AdditionalPersonalInjuryProtectionNewYorkAddedCoverage_CoverageType": "Not Applicable",
                "AdditionalPersonalInjuryProtectionNewYorkAddedCoverage_OtherExpensesLimit": "Not Applicable",
                "AdditionalPersonalInjuryProtectionNewYorkAddedCoverage_TotalAdditionalLimits": "Not Applicable",
                "AdditionalPersonalInjuryProtectionNewYorkDeathBenefitCoverage_AdditionalDeathBenefit": "Not Applicable",
                "AdditionalPersonalInjuryProtectionNewYorkDeathBenefitCoverage_Limit": "Not Applicable"
              }
            ],
            "CommercialAutoRentalReimbursementCovList": [
              {
                "DailyRentalAmount": "55",
                "MaximumRentalDays": "45"
              }
            ],
            <#assign SpecialTypesLevels="SpecialTypesLevel"+x><#list SpecialTypesLevels?eval as result>     
        	"${result.atrib}":"${result.value}"<#if result?is_last><#else>,</#if>
        	</#list>   
            }
        }
      ],
      "HiredAuto": [
        {
          "HiredAutoDetail": {
          "LocationNumber": "1",
          	<#assign HiredAutoLevels="HiredAutoLevel"+x><#list HiredAutoLevels?eval as result>     
        	"${result.atrib}":"${result.value}"<#if result?is_last><#else>,</#if>
        	</#list>   
          }
        }
      ],
       "Location": [
                {
                    "ActualCashValue": [
                        {
                            "MaximumRange": "",
                            "MinimumRange": ""
                        },
                        {
                            "MaximumRange": "",
                            "MinimumRange": ""
                        }
                    ],
                    "CostNew": [
                        {
                            "MaximumRange": "",
                            "MinimumRange": ""
                        },
                        {
                            "MaximumRange": "",
                            "MinimumRange": ""
                        }
                    ],
                    "LocationNumber": "1",
                    "Payroll": "",
                    "Revenue": "",
                    "StatedAmount": [
                        {
                            "MaximumRange": "",
                            "MinimumRange": ""
                        },
                        {
                            "MaximumRange": "",
                            "MinimumRange": ""
                        }
                    ]
                },
                {
                    "ActualCashValue": [
                        {
                            "MaximumRange": "",
                            "MinimumRange": ""
                        },
                        {
                            "MaximumRange": "",
                            "MinimumRange": ""
                        }
                    ],
                    "CostNew": [
                        {
                            "MaximumRange": "",
                            "MinimumRange": ""
                        },
                        {
                            "MaximumRange": "",
                            "MinimumRange": ""
                        }
                    ],
                    "LocationNumber": "2",
                    "Payroll": "",
                    "Revenue": "",
                    "StatedAmount": [
                        {
                            "MaximumRange": "",
                            "MinimumRange": ""
                        },
                        {
                            "MaximumRange": "",
                            "MinimumRange": ""
                        }
                    ]
                },
                {
                    "ActualCashValue": [
                        {
                            "MaximumRange": "",
                            "MinimumRange": ""
                        },
                        {
                            "MaximumRange": "",
                            "MinimumRange": ""
                        }
                    ],
                    "CostNew": [
                        {
                            "MaximumRange": "",
                            "MinimumRange": ""
                        },
                        {
                            "MaximumRange": "",
                            "MinimumRange": ""
                        }
                    ],
                    "LocationNumber": "3",
                    "Payroll": "",
                    "Revenue": "",
                    "StatedAmount": [
                        {
                            "MaximumRange": "",
                            "MinimumRange": ""
                        },
                        {
                            "MaximumRange": "",
                            "MinimumRange": ""
                        }
                    ]
                },
                {
                    "ActualCashValue": [
                        {
                            "MaximumRange": "",
                            "MinimumRange": ""
                        },
                        {
                            "MaximumRange": "",
                            "MinimumRange": ""
                        }
                    ],
                    "CostNew": [
                        {
                            "MaximumRange": "",
                            "MinimumRange": ""
                        },
                        {
                            "MaximumRange": "",
                            "MinimumRange": ""
                        }
                    ],
                    "LocationNumber": "4",
                    "Payroll": "",
                    "Revenue": "",
                    "StatedAmount": [
                        {
                            "MaximumRange": "",
                            "MinimumRange": ""
                        },
                        {
                            "MaximumRange": "",
                            "MinimumRange": ""
                        }
                    ]
                }
            ],
      "NonOwnedAuto": [
        {
          "NonOwnedAutoDetail": {
            "LocationNumber": "1",
          	<#assign NonOwnedAutoLevels="NonOwnedAutoLevel"+x><#list NonOwnedAutoLevels?eval as result>     
        	"${result.atrib}":"${result.value}"<#if result?is_last><#else>,</#if>
        	</#list>    
          }
        }
      ]
    }<#if x?is_last><#else>,</#if>
    </#list>  
  ],
  "OwnerId": "35",
   "ActualCashValue": [
        {
            "MaximumRange": "",
            "MinimumRange": ""
        },
        {
            "MaximumRange": "",
            "MinimumRange": ""
        }
    ],
    "CostNew": [
        {
            "MaximumRange": "",
            "MinimumRange": ""
        },
        {
            "MaximumRange": "",
            "MinimumRange": ""
        }
    ],
     "StatedAmount": [
    {
      "MaximumRange": "",
      "MinimumRange": ""
    },
    {
      "MaximumRange": "",
      "MinimumRange": ""
    }
  ],
  "ServiceRequestDetail": {
    <#assign ServiceDetailLevels="ServiceDetailLevel1"><#list ServiceDetailLevels?eval as result>     
        "${result.atrib}":"${result.value}"<#if result?is_last><#else>,</#if>
        </#list>
  }
}