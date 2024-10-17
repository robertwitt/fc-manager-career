using ClubMasterService as service from '../../srv/club-master';
annotate service.Clubs with @(
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Value : badgeUrl,
            Label : '{i18n>ClubBadge}',
        },
        {
            $Type : 'UI.DataField',
            Value : name,
            ![@UI.Importance] : #High,
        },
        {
            $Type : 'UI.DataField',
            Value : country_code,
        },
        {
            $Type : 'UI.DataField',
            Value : stadiumTier_code,
        },
        {
            $Type : 'UI.DataField',
            Value : marketSize_code,
        },
        {
            $Type : 'UI.DataField',
            Value : domesticPrestige,
        },
        {
            $Type : 'UI.DataField',
            Value : internationalPrestige,
        },
    ],
    UI.HeaderInfo : {
        TypeName : '{i18n>Club}',
        TypeNamePlural : '{i18n>Clubs}',
        Title : {
            $Type : 'UI.DataField',
            Value : name,
        },
        ImageUrl : badgeUrl,
    },
    UI.SelectionFields : [
        country_code,
        stadiumTier_code,
        marketSize_code,
        domesticPrestige,
        internationalPrestige,
    ],
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            Label : '{i18n>GeneralInformation}',
            ID : 'i18nGeneralInformation',
            Target : '@UI.FieldGroup#i18nGeneralInformation1',
        },
    ],
    UI.FieldGroup #i18nGeneralInformation : {
        $Type : 'UI.FieldGroupType',
        Data : [
        ],
    },
    UI.FieldGroup #i18nGeneralInformation1 : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : country_code,
            },
            {
                $Type : 'UI.DataField',
                Value : country.scoutingRegion_code,
            },
            {
                $Type : 'UI.DataField',
                Value : stadiumTier_code,
            },
            {
                $Type : 'UI.DataField',
                Value : marketSize_code,
            },
            {
                $Type : 'UI.DataField',
                Value : domesticPrestige,
            },
            {
                $Type : 'UI.DataField',
                Value : internationalPrestige,
            },
            {
                $Type : 'UI.DataField',
                Value : badgeUrl,
            },
        ],
    },
);

annotate service.Clubs with {
    country @Common.Text : country.name
};

annotate service.Clubs with {
    stadiumTier @(
        Common.Text : {
            $value : stadiumTier.name,
            ![@UI.TextArrangement] : #TextOnly
        },
        Common.ValueListWithFixedValues : true,
    )
};

annotate service.Clubs with {
    marketSize @(
        Common.Text : {
            $value : marketSize.name,
            ![@UI.TextArrangement] : #TextOnly
        },
        Common.ValueListWithFixedValues : true,
    )
};

annotate service.StadiumTiers with {
    code @Common.Text : {
        $value : name,
        ![@UI.TextArrangement] : #TextOnly
    }
};

annotate service.MarketSizes with {
    code @Common.Text : {
        $value : name,
        ![@UI.TextArrangement] : #TextOnly,
    }
};

annotate service.Countries with {
    scoutingRegion @Common.Text : {
        $value : scoutingRegion.name,
        ![@UI.TextArrangement] : #TextOnly
    }
};

