.class public Landroid/support/design/circularreveal/c$b;
.super Landroid/util/Property;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/circularreveal/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/Property<",
        "Landroid/support/design/circularreveal/c;",
        "Landroid/support/design/circularreveal/c$d;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/support/design/circularreveal/c;",
            "Landroid/support/design/circularreveal/c$d;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/support/design/circularreveal/c$b;

    const-string v1, "circularReveal"

    invoke-direct {v0, v1}, Landroid/support/design/circularreveal/c$b;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/support/design/circularreveal/c$b;->a:Landroid/util/Property;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 1

    const-class v0, Landroid/support/design/circularreveal/c$d;

    invoke-direct {p0, v0, p1}, Landroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/support/design/circularreveal/c;)Landroid/support/design/circularreveal/c$d;
    .locals 0

    invoke-interface {p1}, Landroid/support/design/circularreveal/c;->getRevealInfo()Landroid/support/design/circularreveal/c$d;

    move-result-object p1

    return-object p1
.end method

.method public a(Landroid/support/design/circularreveal/c;Landroid/support/design/circularreveal/c$d;)V
    .locals 0

    invoke-interface {p1, p2}, Landroid/support/design/circularreveal/c;->setRevealInfo(Landroid/support/design/circularreveal/c$d;)V

    return-void
.end method

.method public synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroid/support/design/circularreveal/c;

    invoke-virtual {p0, p1}, Landroid/support/design/circularreveal/c$b;->a(Landroid/support/design/circularreveal/c;)Landroid/support/design/circularreveal/c$d;

    move-result-object p1

    return-object p1
.end method

.method public synthetic set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/support/design/circularreveal/c;

    check-cast p2, Landroid/support/design/circularreveal/c$d;

    invoke-virtual {p0, p1, p2}, Landroid/support/design/circularreveal/c$b;->a(Landroid/support/design/circularreveal/c;Landroid/support/design/circularreveal/c$d;)V

    return-void
.end method
