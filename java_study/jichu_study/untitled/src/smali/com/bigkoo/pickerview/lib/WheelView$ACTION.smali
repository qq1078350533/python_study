.class public final enum Lcom/bigkoo/pickerview/lib/WheelView$ACTION;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bigkoo/pickerview/lib/WheelView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ACTION"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/bigkoo/pickerview/lib/WheelView$ACTION;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum CLICK:Lcom/bigkoo/pickerview/lib/WheelView$ACTION;

.field public static final enum DAGGLE:Lcom/bigkoo/pickerview/lib/WheelView$ACTION;

.field public static final enum FLING:Lcom/bigkoo/pickerview/lib/WheelView$ACTION;

.field private static final synthetic a:[Lcom/bigkoo/pickerview/lib/WheelView$ACTION;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/bigkoo/pickerview/lib/WheelView$ACTION;

    const-string v1, "CLICK"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/bigkoo/pickerview/lib/WheelView$ACTION;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bigkoo/pickerview/lib/WheelView$ACTION;->CLICK:Lcom/bigkoo/pickerview/lib/WheelView$ACTION;

    new-instance v0, Lcom/bigkoo/pickerview/lib/WheelView$ACTION;

    const-string v1, "FLING"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/bigkoo/pickerview/lib/WheelView$ACTION;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bigkoo/pickerview/lib/WheelView$ACTION;->FLING:Lcom/bigkoo/pickerview/lib/WheelView$ACTION;

    new-instance v0, Lcom/bigkoo/pickerview/lib/WheelView$ACTION;

    const-string v1, "DAGGLE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/bigkoo/pickerview/lib/WheelView$ACTION;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bigkoo/pickerview/lib/WheelView$ACTION;->DAGGLE:Lcom/bigkoo/pickerview/lib/WheelView$ACTION;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/bigkoo/pickerview/lib/WheelView$ACTION;

    sget-object v1, Lcom/bigkoo/pickerview/lib/WheelView$ACTION;->CLICK:Lcom/bigkoo/pickerview/lib/WheelView$ACTION;

    aput-object v1, v0, v2

    sget-object v1, Lcom/bigkoo/pickerview/lib/WheelView$ACTION;->FLING:Lcom/bigkoo/pickerview/lib/WheelView$ACTION;

    aput-object v1, v0, v3

    sget-object v1, Lcom/bigkoo/pickerview/lib/WheelView$ACTION;->DAGGLE:Lcom/bigkoo/pickerview/lib/WheelView$ACTION;

    aput-object v1, v0, v4

    sput-object v0, Lcom/bigkoo/pickerview/lib/WheelView$ACTION;->a:[Lcom/bigkoo/pickerview/lib/WheelView$ACTION;

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

.method public static valueOf(Ljava/lang/String;)Lcom/bigkoo/pickerview/lib/WheelView$ACTION;
    .locals 1

    const-class v0, Lcom/bigkoo/pickerview/lib/WheelView$ACTION;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/bigkoo/pickerview/lib/WheelView$ACTION;

    return-object p0
.end method

.method public static values()[Lcom/bigkoo/pickerview/lib/WheelView$ACTION;
    .locals 1

    sget-object v0, Lcom/bigkoo/pickerview/lib/WheelView$ACTION;->a:[Lcom/bigkoo/pickerview/lib/WheelView$ACTION;

    invoke-virtual {v0}, [Lcom/bigkoo/pickerview/lib/WheelView$ACTION;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/bigkoo/pickerview/lib/WheelView$ACTION;

    return-object v0
.end method
