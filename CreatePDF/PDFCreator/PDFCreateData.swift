//
//  PDFCreateData.swift
//  CreatePDF
//
//  Created by Nikolai  on 20.06.2023.
//

import PDFKit

extension PDFCreator {
    
    func pdfCreateData() -> Data {
        
        let pdfMetaData = [
            kCGPDFContextCreator: "First context",
            kCGPDFContextAuthor: "Nikolai"]
        
        let format = UIGraphicsPDFRendererFormat()
        format.documentInfo = pdfMetaData as [String: Any]
        
        let pageWidth = 8.5 * 72
        let pageHeight = 11.0 * 72
        let pageRect = CGRect(x: 0, y: 0, width: pageWidth, height: pageHeight)
        
        currentPageRect = pageRect
        
        let renderer = UIGraphicsPDFRenderer(bounds: pageRect, format: format)
        
        let data = renderer.pdfData { context in
            context.beginPage()
        }
        
        return data
    }
}
