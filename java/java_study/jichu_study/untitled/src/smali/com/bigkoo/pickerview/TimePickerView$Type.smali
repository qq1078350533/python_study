.class public final enum Lcom/bigkoo/pickerview/TimePickerView$Type;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bigkoo/pickerview/TimePickerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/bigkoo/pickerview/TimePickerView$Type;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ALL:Lcom/bigkoo/pickerview/TimePickerView$Type;

.field public static final enum HOURS_MINS:Lcom/bigkoo/pickerview/TimePickerView$Type;

.field public static final enum MONTH_DAY_HOUR_MIN:Lcom/bigkoo/pickerview/TimePickerView$Type;

.field public static final enum YEAR_MONTH:Lcom/bigkoo/pickerview/TimePickerView$Type;

.field public static final enum YEAR_MONTH_DAY:Lcom/bigkoo/pickerview/TimePickerView$Type;

.field public static final enum YEAR_MONTH_DAY_HOUR_MIN:Lcom/bigkoo/pickerview/TimePickerView$Type;

.field private static final synthetic a:[Lcom/bigkoo/pickerview/TimePickerView$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Lcom/bigkoo/pickerview/TimePickerView$Type;

    const-string v1, "ALL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/bigkoo/pickerview/TimePickerView$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bigkoo/pickerview/TimePickerView$Type;->ALL:Lcom/bigkoo/pickerview/TimePickerView$Type;

    new-instance v0, Lcom/bigkoo/pickerview/TimePickerView$Type;

    const-string v1, "YEAR_MONTH_DAY"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/bigkoo/pickerview/TimePickerView$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bigkoo/pickerview/TimePickerView$Type;->YEAR_MONTH_DAY:Lcom/bigkoo/pickerview/TimePickerView$Type;

    new-instance v0, Lcom/bigkoo/pickerview/TimePickerView$Type;

    const-string v1, "HOURS_MINS"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/bigkoo/pickerview/TimePickerView$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bigkoo/pickerview/TimePickerView$Type;->HOURS_MINS:Lcom/bigkoo/pickerview/TimePickerView$Type;

    new-instance v0, Lcom/bigkoo/pickerview/TimePickerView$Type;

    const-string v1, "MONTH_DAY_HOUR_MIN"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/bigkoo/pickerview/TimePickerView$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bigkoo/pickerview/TimePickerView$Type;->MONTH_DAY_HOUR_MIN:Lcom/bigkoo/pickerview/TimePickerView$Type;

    new-instance v0, Lcom/bigkoo/pickerview/TimePickerView$Type;

    const-string v1, "YEAR_MONTH"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/bigkoo/pickerview/TimePickerView$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bigkoo/pickerview/TimePickerView$Type;->YEAR_MONTH:Lcom/bigkoo/pickerview/TimePickerView$Type;

    new-instance v0, Lcom/bigkoo/pickerview/TimePickerView$Type;

    const-string v1, "YEAR_MONTH_DAY_HOUR_MIN"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/bigkoo/pickerview/TimePickerView$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bigkoo/pickerview/TimePickerView$Type;->YEAR_MONTH_DAY_HOUR_MIN:Lcom/bigkoo/pickerview/TimePickerView$Type;

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/bigkoo/pickerview/TimePickerView$Type;

    sget-object v1, Lcom/bigkoo/pickerview/TimePickerView$Type;->ALL:Lcom/bigkoo/pickerview/TimePickerView$Type;

    aput-object v1, v0, v2

    sget-object v1, Lcom/bigkoo/pickerview/TimePickerView$Type;->YEAR_MONTH_DAY:Lcom/bigkoo/pickerview/TimePickerView$Type;

    aput-object v1, v0, v3

    sget-object v1, Lcom/bigkoo/pickerview/TimePickerView$Type;->HOURS_MINS:Lcom/bigkoo/pickerview/TimePickerView$Type;

    aput-object v1, v0, v4

    sget-object v1, Lcom/bigkoo/pickerview/TimePickerView$Type;->MONTH_DAY_HOUR_MIN:Lcom/bigkoo/pickerview/TimePickerView$Type;

    aput-object v1, v0, v5

    sget-object v1, Lcom/bigkoo/pickerview/TimePickerView$Type;->YEAR_MONTH:Lcom/bigkoo/pickerview/TimePickerView$Type;

    aput-object v1, v0, v6

    sget-object v1, Lcom/bigkoo/pickerview/TimePickerView$Type;->YEAR_MONTH_DAY_HOUR_MIN:Lcom/bigkoo/pickerview/TimePickerView$Type;

    aput-object v1, v0, v7

    sput-object v0, Lcom/bigkoo/pickerview/TimePickerView$Type;->a:[Lcom/bigkoo/pickerview/TimePickerView$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/bigkoo/pickerview/TimePickerView$Type;
    .locals 1

    const-class v0, Lcom/bigkoo/pickerview/TimePickerView$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/bigkoo/pickerview/TimePickerView$Type;

    return-object p0
.end method

.method public static values()[Lcom/bigkoo/pickerview/TimePickerView$Type;
    .locals 1

    sget-object v0, Lcom/bigkoo/pickerview/TimePickerView$Type;->a:[Lcom/bigkoo/pickerview/TimePickerView$Type;

    invoke-virtual {v0}, [Lcom/bigkoo/pickerview/TimePickerView$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/bigkoo/pickerview/TimePickerView$Type;

    return-object v0
.end method
