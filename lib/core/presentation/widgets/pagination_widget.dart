import 'package:flutter/material.dart';

class PaginationWidget<T> extends StatefulWidget {
  final List<T> items;
  final Widget Function(BuildContext context, T item, int index) itemBuilder;
  final bool isLoading;
  final bool hasReachedMax;
  final VoidCallback onLoadMore;
  final Future<void> Function() onRefresh;
  final Widget placeholderBuilder;
  final Widget? header;

  const PaginationWidget({
    Key? key,
    required this.items,
    required this.itemBuilder,
    required this.isLoading,
    required this.hasReachedMax,
    required this.onLoadMore,
    required this.onRefresh,
    required this.placeholderBuilder,
    this.header,
  }) : super(key: key);

  @override
  State<PaginationWidget<T>> createState() => _PaginationWidgetState<T>();
}

class _PaginationWidgetState<T> extends State<PaginationWidget<T>> {
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
  }

  @override
  void dispose() {
    _scrollController.removeListener(_onScroll);
    _scrollController.dispose();
    super.dispose();
  }

  void _onScroll() {
    if (_isBottom && !widget.hasReachedMax && !widget.isLoading) {
      widget.onLoadMore();
    }
  }

  bool get _isBottom {
    if (!_scrollController.hasClients) return false;
    final maxScroll = _scrollController.position.maxScrollExtent;
    final currentScroll = _scrollController.position.pixels;
    return currentScroll >= (maxScroll - 200);
  }

  @override
  Widget build(BuildContext context) {
    if (widget.items.isEmpty && widget.isLoading) {
      return ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) => widget.placeholderBuilder,
      );
    }

    if (widget.items.isEmpty) {
      return RefreshIndicator(
        onRefresh: widget.onRefresh,
        child: SingleChildScrollView(
          physics: AlwaysScrollableScrollPhysics(),
          child: Container(
            height: MediaQuery.of(context).size.height * 0.5,
            alignment: Alignment.center,
            child: const Text('No items found.'),
          ),
        ),
      );
    }
    return RefreshIndicator(
      onRefresh: widget.onRefresh,
      child: LayoutBuilder(
        builder: (context, constraints) {
          return SingleChildScrollView(
            physics: const AlwaysScrollableScrollPhysics(),
            child: ConstrainedBox(
              constraints: BoxConstraints(
                maxHeight: constraints.maxHeight,
                maxWidth: constraints.maxWidth,
              ),
              child: ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                controller: _scrollController,
                itemCount: widget.hasReachedMax
                    ? widget.items.length
                    : widget.items.length + 1,
                itemBuilder: (context, index) {
                  if (index >= widget.items.length) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      child: widget.placeholderBuilder,
                    );
                  }
                  return widget.itemBuilder(
                    context,
                    widget.items[index],
                    index,
                  );
                },
              ),
            ),
          );
        },
      ),
    );
  }
}
