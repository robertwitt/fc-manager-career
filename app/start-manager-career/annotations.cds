using ManagerCareerService as service from '../../srv/manager-career';
using from '../../db/common/Season';
using from '../../db/common/Country';


annotate service.ManagerCareers with @(
    UI.SelectionFields : [
        club_ID,
        startingSeason_year,
        startingLeague_code,
        startingInternationalCompetition_code,
        startingOverall,
        startingDnaPoints,
        startingTraitPoints,
        started,
        active,
    ],
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Value : club.badgeUrl,
            Label : '{i18n>ClubBadge}',
        },
        {
            $Type : 'UI.DataField',
            Value : club_ID,
        },
        {
            $Type : 'UI.DataField',
            Value : startingSeason_year,
        },
        {
            $Type : 'UI.DataField',
            Value : club.country.flagUrl,
            Label : '{i18n>Country}',
        },
        {
            $Type : 'UI.DataField',
            Value : startingLeague_code,
        },
        {
            $Type : 'UI.DataField',
            Value : startingInternationalCompetition_code,
        },
        {
            $Type : 'UI.DataField',
            Value : startingOverall,
        },
        {
            $Type : 'UI.DataField',
            Value : startingDnaPoints,
        },
        {
            $Type : 'UI.DataField',
            Value : startingTraitPoints,
        },
        {
            $Type : 'UI.DataField',
            Value : started,
        },
        {
            $Type : 'UI.DataField',
            Value : active,
        },
    ],
    UI.HeaderInfo : {
        TypeName : '{i18n>ManagerCareer}',
        TypeNamePlural : '{i18n>ManagerCareers}',
        Title : {
            $Type : 'UI.DataField',
            Value : club_ID,
        },
        ImageUrl : club.badgeUrl,
    },
    UI.HeaderFacets : [
        
    ],
    UI.FieldGroup #Test : {
        $Type : 'UI.FieldGroupType',
        Data : [
            
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            Label : '{i18n>StartingSeason}',
            ID : 'i18nStartingSeason',
            Target : '@UI.FieldGroup#i18nStartingSeason',
        },
        {
            $Type : 'UI.ReferenceFacet',
            Label : '{i18n>Status}',
            ID : 'i18nStatus',
            Target : '@UI.FieldGroup#i18nStatus',
        },
    ],
    UI.FieldGroup #i18nStartingSeason : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : startingSeason_year,
            },
            {
                $Type : 'UI.DataField',
                Value : startingLeague_code,
            },
            {
                $Type : 'UI.DataField',
                Value : startingInternationalCompetition_code,
            },
            {
                $Type : 'UI.DataField',
                Value : startingOverall,
            },
            {
                $Type : 'UI.DataField',
                Value : club.domesticPrestige,
            },
            {
                $Type : 'UI.DataField',
                Value : club.internationalPrestige,
            },
            {
                $Type : 'UI.DataField',
                Value : startingDnaPoints,
            },
            {
                $Type : 'UI.DataField',
                Value : startingTraitPoints,
            },
        ],
    },
    UI.FieldGroup #i18nStatus : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : started,
            },
            {
                $Type : 'UI.DataField',
                Value : active,
            },
        ],
    },
    UI.Identification : [
        {
            $Type : 'UI.DataFieldForAction',
            Action : 'ManagerCareerService.start',
            Label : '{i18n>StartCareer}',
        },
        {
            $Type : 'UI.DataFieldForAction',
            Action : 'ManagerCareerService.activate',
            Label : '{i18n>ActivateCareer}',
        },
    ],
);

annotate service.ManagerCareers with {
    starting_season_year @(
    Common.Label : 'starting_season_year',
    Common.ValueList : {
        $Type : 'Common.ValueListType',
        CollectionPath : 'Season',
        Parameters : [
            {
                $Type : 'Common.ValueListParameterInOut',
                LocalDataProperty : starting_season_year,
                ValueListProperty : 'year',
            },
        ],
    },
    Common.ValueListWithFixedValues : true,
    Common.Text : {
        $value : starting_season.name,
        ![@UI.TextArrangement] : #TextOnly
    },
)
};

annotate service.ManagerCareers with {
    starting_league_code @(
    Common.Label : 'starting_league_code',
    Common.ValueList : {
        $Type : 'Common.ValueListType',
        CollectionPath : 'League',
        Parameters : [
            {
                $Type : 'Common.ValueListParameterInOut',
                LocalDataProperty : starting_league_code,
                ValueListProperty : 'code',
            },
        ],
    },
    Common.ValueListWithFixedValues : true,
    Common.Text : {
        $value : starting_league.name,
        ![@UI.TextArrangement] : #TextOnly
    },
)
};

annotate service.ManagerCareers with {
    starting_internationalCompetition_code @(
    Common.Label : 'starting_internationalCompetition_code',
    Common.ValueList : {
        $Type : 'Common.ValueListType',
        CollectionPath : 'InternationalCompetition',
        Parameters : [
            {
                $Type : 'Common.ValueListParameterInOut',
                LocalDataProperty : starting_internationalCompetition_code,
                ValueListProperty : 'code',
            },
        ],
    },
    Common.ValueListWithFixedValues : true,
    Common.Text : {
        $value : starting_internationalCompetition.name,
        ![@UI.TextArrangement] : #TextOnly
    },
)
};

annotate service.ManagerCareers with {
    starting_overall @Common.Label : 'starting_overall'
};

annotate service.ManagerCareers with {
    starting_dnaPoints @Common.Label : 'starting_dnaPoints'
};

annotate service.ManagerCareers with {
    starting_traitPoints @Common.Label : 'starting_traitPoints'
};

annotate service.ManagerCareers with {
    club @(Common.ValueList : {
            $Type : 'Common.ValueListType',
            CollectionPath : 'Clubs',
            Parameters : [
                {
                    $Type : 'Common.ValueListParameterInOut',
                    LocalDataProperty : club_ID,
                    ValueListProperty : 'ID',
                },
            ],
        },
        Common.ValueListWithFixedValues : false,
        Common.Text : {
            $value : club.name,
            ![@UI.TextArrangement] : #TextOnly
        },
)};

annotate service.Clubs with {
    ID @Common.Text : {
        $value : name,
        ![@UI.TextArrangement] : #TextOnly,
    }
};

annotate service.Season with {
    year @Common.Text : {
        $value : name,
        ![@UI.TextArrangement] : #TextOnly,
    }
};

annotate service.League with {
    code @Common.Text : {
        $value : name,
        ![@UI.TextArrangement] : #TextOnly,
    }
};

annotate service.InternationalCompetition with {
    code @Common.Text : {
        $value : name,
        ![@UI.TextArrangement] : #TextOnly,
    }
};

annotate service.Clubs with {
    badgeUrl @UI.IsImageURL : true
};

annotate service.Country with {
    flagUrl @UI.IsImageURL : true
};

annotate service.ManagerCareers with {
    startingSeason @(
        Common.ValueListWithFixedValues : true,
        Common.Text : {
            $value : startingSeason.name,
            ![@UI.TextArrangement] : #TextOnly
        },
    )
};

annotate service.ManagerCareers with {
    startingLeague @(
        Common.ValueListWithFixedValues : true,
        Common.Text : {
            $value : startingLeague.name,
            ![@UI.TextArrangement] : #TextOnly
        },
    )
};

annotate service.ManagerCareers with {
    startingInternationalCompetition @(
        Common.ValueListWithFixedValues : true,
        Common.Text : {
            $value : startingInternationalCompetition.name,
            ![@UI.TextArrangement] : #TextOnly
        },
    )
};

annotate service.Clubs with {
    domesticPrestige @Common.FieldControl : #ReadOnly
};

annotate service.Clubs with {
    internationalPrestige @Common.FieldControl : #ReadOnly
};

