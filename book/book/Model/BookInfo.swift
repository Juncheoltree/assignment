//
//  BookInfo.swift
//  book
//
//  Created by 김준철 on 5/12/24.
//

import Foundation

struct BookInfo: Codable {
    let documents: [Document]
}

struct Document: Codable {

    let title: String // 도서 제목
    let contents: String // 도서 소개
    let url: String // 도서 상세 URL
    let authors: [String] // 도서 저자 리스트
    let publisher: String // 도서 출판사
    let price: Int // 정가
    //let salePrice: Int // 판매가
    let thumbnail: String // 표지 미리보기 URL
    
    enum CodingKeys: String, CodingKey {
        case title, contents, url, authors, publisher, price, thumbnail
        //case salePrice = "sale_price" // API에서는 sale_price로 오는 속성을 salePrice로 매핑
    }
}
