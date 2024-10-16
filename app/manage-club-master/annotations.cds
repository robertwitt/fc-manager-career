using ClubMasterService as service from '../../srv/club-master';
annotate service.Clubs with @(
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Value : name,
            ![@UI.Importance] : #High,
        },
    ],
    UI.HeaderInfo : {
        TypeName : '{i18n>Club}',
        TypeNamePlural : '{i18n>Clubs}',
        Title : {
            $Type : 'UI.DataField',
            Value : name,
        },
    },
);

