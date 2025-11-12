import 'package:bayteq_flutter_challenge/features/products/products.dart';
import 'package:formz/formz.dart';

class ProductForm with FormzMixin {

  final ProductTitle productTitle;
  final ProductDescription productDescription;
  final ProductPrice productPrice;
  final ProductCategory productCategory;

  final FormzSubmissionStatus submissionStatus;
  final String errorMessage;
  final bool hasSubmittedOnce;

  ProductForm({
    required this.productTitle,
    required this.productDescription,
    required this.productPrice,
    required this.productCategory,
    this.submissionStatus = FormzSubmissionStatus.initial,
    this.errorMessage = '',
    this.hasSubmittedOnce = false,
  });

  @override
  List<FormzInput> get inputs => [productTitle, productDescription, productPrice, productCategory];

  ProductForm copyWith({
    ProductTitle? productTitle,
    ProductDescription? productDescription,
    ProductPrice? productPrice,
    ProductCategory? productCategory,
    FormzSubmissionStatus? submissionStatus,
    String? errorMessage,
    bool? hasSubmittedOnce,
  }) {
    return ProductForm(
      productTitle: productTitle ?? this.productTitle,
      productDescription: productDescription ?? this.productDescription,
      productPrice: productPrice ?? this.productPrice,
      productCategory: productCategory ?? this.productCategory,
      submissionStatus: submissionStatus ?? this.submissionStatus,
      errorMessage: errorMessage ?? this.errorMessage,
      hasSubmittedOnce: hasSubmittedOnce ?? this.hasSubmittedOnce,
    );
  }
}