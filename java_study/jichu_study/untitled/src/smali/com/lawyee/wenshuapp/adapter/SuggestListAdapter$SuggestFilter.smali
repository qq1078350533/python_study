.class Lcom/lawyee/wenshuapp/adapter/SuggestListAdapter$SuggestFilter;
.super Landroid/widget/Filter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lawyee/wenshuapp/adapter/SuggestListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SuggestFilter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lawyee/wenshuapp/adapter/SuggestListAdapter;


# direct methods
.method private constructor <init>(Lcom/lawyee/wenshuapp/adapter/SuggestListAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/lawyee/wenshuapp/adapter/SuggestListAdapter$SuggestFilter;->this$0:Lcom/lawyee/wenshuapp/adapter/SuggestListAdapter;

    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lawyee/wenshuapp/adapter/SuggestListAdapter;Lcom/lawyee/wenshuapp/adapter/SuggestListAdapter$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/lawyee/wenshuapp/adapter/SuggestListAdapter$SuggestFilter;-><init>(Lcom/lawyee/wenshuapp/adapter/SuggestListAdapter;)V

    return-void
.end method


# virtual methods
.method protected performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .locals 3

    const-string v0, "SuggestFilter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "performFiltering:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/lawyee/wenshuapp/util/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Landroid/widget/Filter$FilterResults;

    invoke-direct {p1}, Landroid/widget/Filter$FilterResults;-><init>()V

    iget-object v0, p0, Lcom/lawyee/wenshuapp/adapter/SuggestListAdapter$SuggestFilter;->this$0:Lcom/lawyee/wenshuapp/adapter/SuggestListAdapter;

    invoke-static {v0}, Lcom/lawyee/wenshuapp/adapter/SuggestListAdapter;->access$200(Lcom/lawyee/wenshuapp/adapter/SuggestListAdapter;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p1, Landroid/widget/Filter$FilterResults;->count:I

    iget-object v0, p0, Lcom/lawyee/wenshuapp/adapter/SuggestListAdapter$SuggestFilter;->this$0:Lcom/lawyee/wenshuapp/adapter/SuggestListAdapter;

    invoke-static {v0}, Lcom/lawyee/wenshuapp/adapter/SuggestListAdapter;->access$200(Lcom/lawyee/wenshuapp/adapter/SuggestListAdapter;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p1, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    return-object p1
.end method

.method protected publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .locals 1

    iget-object p1, p0, Lcom/lawyee/wenshuapp/adapter/SuggestListAdapter$SuggestFilter;->this$0:Lcom/lawyee/wenshuapp/adapter/SuggestListAdapter;

    if-eqz p2, :cond_1

    iget v0, p2, Landroid/widget/Filter$FilterResults;->count:I

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p2, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    check-cast p2, Ljava/util/List;

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p2, 0x0

    :goto_1
    invoke-static {p1, p2}, Lcom/lawyee/wenshuapp/adapter/SuggestListAdapter;->access$302(Lcom/lawyee/wenshuapp/adapter/SuggestListAdapter;Ljava/util/List;)Ljava/util/List;

    iget-object p1, p0, Lcom/lawyee/wenshuapp/adapter/SuggestListAdapter$SuggestFilter;->this$0:Lcom/lawyee/wenshuapp/adapter/SuggestListAdapter;

    invoke-static {p1}, Lcom/lawyee/wenshuapp/adapter/SuggestListAdapter;->access$300(Lcom/lawyee/wenshuapp/adapter/SuggestListAdapter;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/lawyee/wenshuapp/adapter/SuggestListAdapter$SuggestFilter;->this$0:Lcom/lawyee/wenshuapp/adapter/SuggestListAdapter;

    invoke-static {p1}, Lcom/lawyee/wenshuapp/adapter/SuggestListAdapter;->access$300(Lcom/lawyee/wenshuapp/adapter/SuggestListAdapter;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_2

    iget-object p1, p0, Lcom/lawyee/wenshuapp/adapter/SuggestListAdapter$SuggestFilter;->this$0:Lcom/lawyee/wenshuapp/adapter/SuggestListAdapter;

    invoke-virtual {p1}, Lcom/lawyee/wenshuapp/adapter/SuggestListAdapter;->notifyDataSetChanged()V

    goto :goto_2

    :cond_2
    iget-object p1, p0, Lcom/lawyee/wenshuapp/adapter/SuggestListAdapter$SuggestFilter;->this$0:Lcom/lawyee/wenshuapp/adapter/SuggestListAdapter;

    invoke-virtual {p1}, Lcom/lawyee/wenshuapp/adapter/SuggestListAdapter;->notifyDataSetInvalidated()V

    :goto_2
    return-void
.end method
