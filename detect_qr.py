import cv2

def draw_bbox(img):
	detector = cv2.QRCodeDetector()
	data, bbox, straight_qrcode = detector.detectAndDecode(img)
	if len(data) == 0:
		return "", img

	if bbox is not None:
		n_lines = len(bbox)
		for i in range(n_lines):
			point1 = tuple(bbox[i][0])
			point2 = tuple(bbox[(i+1) % n_lines][0])
			cv2.line(img, point1, point2, color=(255, 0, 0), thickness=2)
	return data, img