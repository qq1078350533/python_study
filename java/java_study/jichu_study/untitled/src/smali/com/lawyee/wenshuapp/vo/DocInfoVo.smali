.class public Lcom/lawyee/wenshuapp/vo/DocInfoVo;
.super Lnet/lawyee/mobilelib/vo/BaseVO;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lawyee/wenshuapp/vo/DocInfoVo$DocInfoVoBean;
    }
.end annotation


# static fields
.field private static final CENTERSTYLE:Ljava/lang/String; = "<div style=\'TEXT-ALIGN: center; LINE-HEIGHT: 25pt; MARGIN: 0.5pt 0cm; FONT-FAMILY: \u5b8b\u4f53; FONT-SIZE: 22pt;\'>"

.field private static final CENTERSTYLEWS:Ljava/lang/String; = "<div style=\'TEXT-ALIGN: center; LINE-HEIGHT: 30pt; MARGIN: 0.5pt 0cm; FONT-FAMILY: \u4eff\u5b8b; FONT-SIZE: 26pt;\'>"

.field public static final CINT_FONT_DEFAUT:I = 0x3

.field private static final CSTRS_STYLE_FONTSIZE1:[Ljava/lang/String;

.field private static final CSTRS_STYLE_FONTSIZE2:[Ljava/lang/String;

.field private static final CSTRS_STYLE_FONTSIZE3:[Ljava/lang/String;

.field private static final CSTR_STYLE_RIGHTSTYLE_NEW:Ljava/lang/String; = "MARGIN: 0.5pt 0cm;"

.field private static final CSTR_STYLE_RIGHTSTYLE_OLD:Ljava/lang/String; = "MARGIN: 0.5pt 72pt 0.5pt 0cm;"

.field private static final LEFTSPACE2STYLE:Ljava/lang/String; = "<div style=\'LINE-HEIGHT: 25pt;TEXT-ALIGN:justify;TEXT-JUSTIFY:inter-ideograph; TEXT-INDENT: 30pt; MARGIN: 0.5pt 0cm;FONT-FAMILY: \u4eff\u5b8b; FONT-SIZE: 16pt;\'>"

.field private static final LEFTSTYLE:Ljava/lang/String; = "<div style=\'LINE-HEIGHT: 25pt;TEXT-ALIGN:justify;TEXT-JUSTIFY:inter-ideograph; MARGIN: 0.5pt 0cm;FONT-FAMILY: \u4eff\u5b8b; FONT-SIZE: 16pt;\'>"

.field private static final RIGHTSTYLE:Ljava/lang/String; = "<div style=\'TEXT-ALIGN: right; LINE-HEIGHT: 25pt; MARGIN: 0.5pt 72pt 0.5pt 0cm;FONT-FAMILY: \u4eff\u5b8b; FONT-SIZE: 16pt;\'>"

.field private static final RIGHTSTYLE15:Ljava/lang/String; = "<div style=\'TEXT-ALIGN: right; LINE-HEIGHT: 30pt; MARGIN: 0.5pt 0cm;  FONT-FAMILY: \u4eff\u5b8b;FONT-SIZE: 16pt; \'>"


# instance fields
.field private DocInfoVo:Lcom/lawyee/wenshuapp/vo/DocInfoVo$DocInfoVoBean;

.field private id:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const-string v0, "FONT-SIZE: 20pt;"

    const-string v1, "FONT-SIZE: 18pt;"

    const-string v2, "FONT-SIZE: 14pt;"

    const-string v3, "FONT-SIZE: 12pt;"

    const-string v4, "FONT-SIZE: 13px;"

    const-string v5, "FONT-SIZE: 11px;"

    const-string v6, "FONT-SIZE: 9px;"

    filled-new-array/range {v0 .. v6}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lawyee/wenshuapp/vo/DocInfoVo;->CSTRS_STYLE_FONTSIZE1:[Ljava/lang/String;

    const-string v1, "FONT-SIZE: 24pt;"

    const-string v2, "FONT-SIZE: 20pt;"

    const-string v3, "FONT-SIZE: 16pt;"

    const-string v4, "FONT-SIZE: 14pt;"

    const-string v5, "FONT-SIZE: 15px;"

    const-string v6, "FONT-SIZE: 13px;"

    const-string v7, "FONT-SIZE: 11px;"

    filled-new-array/range {v1 .. v7}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lawyee/wenshuapp/vo/DocInfoVo;->CSTRS_STYLE_FONTSIZE2:[Ljava/lang/String;

    const-string v1, "FONT-SIZE: 26pt;"

    const-string v2, "FONT-SIZE: 22pt;"

    const-string v3, "FONT-SIZE: 18pt;"

    const-string v4, "FONT-SIZE: 16pt;"

    const-string v5, "FONT-SIZE: 17px;"

    const-string v6, "FONT-SIZE: 15px;"

    const-string v7, "FONT-SIZE: 13px;"

    filled-new-array/range {v1 .. v7}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lawyee/wenshuapp/vo/DocInfoVo;->CSTRS_STYLE_FONTSIZE3:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lnet/lawyee/mobilelib/vo/BaseVO;-><init>()V

    return-void
.end method

.method private static getFontCSSFileName(I)[Ljava/lang/String;
    .locals 0

    packed-switch p0, :pswitch_data_0

    sget-object p0, Lcom/lawyee/wenshuapp/vo/DocInfoVo;->CSTRS_STYLE_FONTSIZE3:[Ljava/lang/String;

    return-object p0

    :pswitch_0
    sget-object p0, Lcom/lawyee/wenshuapp/vo/DocInfoVo;->CSTRS_STYLE_FONTSIZE2:[Ljava/lang/String;

    return-object p0

    :pswitch_1
    sget-object p0, Lcom/lawyee/wenshuapp/vo/DocInfoVo;->CSTRS_STYLE_FONTSIZE1:[Ljava/lang/String;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public generateHtml(Landroid/content/Context;I[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    const-string p2, "wenshu.html"

    invoke-static {p1, p2}, Lnet/lawyee/mobilelib/b/a;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p4, :cond_0

    const-string p4, "\u3010\u6587\u4e66\u5185\u5bb9\u4e3a\u7a7a\u3011"

    :cond_0
    const-string p2, "%\u6848\u4ef6\u540d\u79f0%"

    if-nez p5, :cond_1

    const-string p5, ""

    :cond_1
    invoke-virtual {p1, p2, p5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "%\u53d1\u5e03\u65e5\u671f%"

    if-nez p6, :cond_2

    const-string p6, ""

    :cond_2
    invoke-virtual {p1, p2, p6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "%\u6b21\u6570%"

    if-nez p7, :cond_3

    const-string p7, "1"

    :cond_3
    invoke-virtual {p1, p2, p7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "%\u6587\u4e66\u5185\u5bb9%"

    invoke-virtual {p1, p2, p4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "MARGIN: 0.5pt 72pt 0.5pt 0cm;"

    const-string p4, "MARGIN: 0.5pt 0cm;"

    invoke-virtual {p1, p2, p4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    if-eqz p3, :cond_5

    array-length p2, p3

    if-lez p2, :cond_5

    array-length p2, p3

    const/4 p4, 0x0

    :goto_0
    if-ge p4, p2, :cond_5

    aget-object p5, p3, p4

    invoke-static {p5}, Lnet/lawyee/mobilelib/b/h;->a(Ljava/lang/String;)Z

    move-result p6

    if-nez p6, :cond_4

    new-instance p6, Ljava/lang/StringBuilder;

    invoke-direct {p6}, Ljava/lang/StringBuilder;-><init>()V

    const-string p7, "<span style=\"color:red\">"

    invoke-virtual {p6, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p7, "</span>"

    invoke-virtual {p6, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p6

    invoke-virtual {p1, p5, p6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    :cond_4
    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    :cond_5
    return-object p1
.end method

.method public getDocInfoVo()Lcom/lawyee/wenshuapp/vo/DocInfoVo$DocInfoVoBean;
    .locals 1

    iget-object v0, p0, Lcom/lawyee/wenshuapp/vo/DocInfoVo;->DocInfoVo:Lcom/lawyee/wenshuapp/vo/DocInfoVo$DocInfoVoBean;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/lawyee/wenshuapp/vo/DocInfoVo;->id:Ljava/lang/String;

    return-object v0
.end method

.method public setDocInfoVo(Lcom/lawyee/wenshuapp/vo/DocInfoVo$DocInfoVoBean;)V
    .locals 0

    iput-object p1, p0, Lcom/lawyee/wenshuapp/vo/DocInfoVo;->DocInfoVo:Lcom/lawyee/wenshuapp/vo/DocInfoVo$DocInfoVoBean;

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/lawyee/wenshuapp/vo/DocInfoVo;->id:Ljava/lang/String;

    return-void
.end method
