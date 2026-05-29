import 'package:flutter/material.dart';

class ReversePaginationWidget<T> extends StatefulWidget {
  final List<T> items;
  final Widget Function(BuildContext context, T item, int index) itemBuilder;
  final bool isLoading;
  final bool hasReachedMax;
  final VoidCallback onLoadMore;
  final Widget placeholderBuilder;

  const ReversePaginationWidget({
    super.key,
    required this.items,
    required this.itemBuilder,
    required this.isLoading,
    required this.hasReachedMax,
    required this.onLoadMore,
    required this.placeholderBuilder,
  });

  @override
  State<ReversePaginationWidget<T>> createState() =>
      _ReversePaginationWidgetState<T>();
}

class _ReversePaginationWidgetState<T>
    extends State<ReversePaginationWidget<T>> {
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
    if (_isTop && !widget.hasReachedMax && !widget.isLoading) {
      widget.onLoadMore();
    }
  }

  bool get _isTop {
    if (!_scrollController.hasClients) return false;
    final maxScroll = _scrollController.position.maxScrollExtent;
    final currentScroll = _scrollController.position.pixels;
    // In a reversed list, maxScrollExtent is at the top.
    return currentScroll >= (maxScroll - 20);
  }

  @override
  Widget build(BuildContext context) {
    if (widget.items.isEmpty && widget.isLoading) {
      return ListView.builder(
        reverse: true,
        itemCount: 10,
        itemBuilder: (context, index) => widget.placeholderBuilder,
      );
    }

    if (widget.items.isEmpty) {
      return const Center(child: Text('No messages found.'));
    }

    return ListView.builder(
      controller: _scrollController,
      reverse: true,
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
        return widget.itemBuilder(context, widget.items[index], index);
      },
    );
  }
}
