.class Lcom/lawyee/wenshuapp/ui/ListActivity$5;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/lawyee/wenshuapp/adapter/SearchListAdapter$SearchVOChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lawyee/wenshuapp/ui/ListActivity;->r()Lcom/lawyee/wenshuapp/adapter/SearchListAdapter$SearchVOChangeListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lawyee/wenshuapp/ui/ListActivity;


# direct methods
.method constructor <init>(Lcom/lawyee/wenshuapp/ui/ListActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/lawyee/wenshuapp/ui/ListActivity$5;->a:Lcom/lawyee/wenshuapp/ui/ListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange()V
    .locals 1

    iget-object v0, p0, Lcom/lawyee/wenshuapp/ui/ListActivity$5;->a:Lcom/lawyee/wenshuapp/ui/ListActivity;

    invoke-static {v0}, Lcom/lawyee/wenshuapp/ui/ListActivity;->d(Lcom/lawyee/wenshuapp/ui/ListActivity;)V

    return-void
.end method
