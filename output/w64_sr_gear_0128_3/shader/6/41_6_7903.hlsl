// ---- Created with 3Dmigoto v1.3.16 on Fri Jun 30 00:18:34 2023
cbuffer cb10 : register(b10)
{
  float4 cb10[1];
}

cbuffer cb9 : register(b9)
{
  float4 cb9[64];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[100];
}




// 3Dmigoto declarations
#define cmp -


void main)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_uav_typed_buffer (float,float,float,float) u0
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11;
  uint4 bitmask, uiDest;
  float4 fDest;

// Needs manual fix for instruction:
// unknown dcl_: dcl_thread_group 64, 1, 1
  r0.x = cb0[89].x + 0.5;
  r0.x = (uint)r0.x;
  r0.x = cmp((uint)vThreadID.x < (uint)r0.x);
  if (r0.x != 0) {
    r0.x = (uint)cb0[99].x;
    r0.y = cb10[0].x + 0.25;
    r0.z = cmp(cb0[23].x < cb0[24].x);
    r0.z = r0.z ? cb0[23].x : 0;
    r0.yz = (int2)r0.yz;
    r0.z = (int)r0.z + (int)r0.y;
    r0.w = (uint)vThreadID.x;
    r1.y = cb0[19].x + r0.w;
    r0.w = cb0[21].x + r1.y;
    r0.w = (uint)r0.w;
    r2.x = (int)r0.w ^ 61;
    r0.w = (uint)r0.w >> 16;
    r0.w = (int)r0.w ^ (int)r2.x;
    r0.w = (int)r0.w * 9;
    r2.x = (uint)r0.w >> 4;
    r0.w = (int)r0.w ^ (int)r2.x;
    r0.w = (int)r0.w * 0x27d4eb2d;
    r2.x = (uint)r0.w >> 15;
    r0.w = (int)r0.w ^ (int)r2.x;
    r0.w = mad((int)r0.w, 0x0019660d, 0x3c6ef35f);
    r2.x = (uint)r0.w;
    r2.x = 2.32830644e-010 * r2.x;
    r0.w = mad((int)r0.w, 0x0019660d, 0x3c6ef35f);
    r3.x = (uint)r0.w;
    r2.y = 2.32830644e-010 * r3.x;
    r0.w = mad((int)r0.w, 0x0019660d, 0x3c6ef35f);
    r3.x = (uint)r0.w;
    r0.w = mad((int)r0.w, 0x0019660d, 0x3c6ef35f);
    r3.y = (uint)r0.w;
    r0.w = mad((int)r0.w, 0x0019660d, 0x3c6ef35f);
    r3.z = (uint)r0.w;
    r4.x = 2.32830644e-010 * r3.z;
    r0.w = mad((int)r0.w, 0x0019660d, 0x3c6ef35f);
    r3.z = (uint)r0.w;
    r2.zw = float2(5.82076609e-011,2.32830644e-010) * r3.yy;
    r5.xy = r3.yy * float2(1.7881393e-009,9.14388773e-011) + float2(0,0.607272983);
    r6.xyz = cmp(r3.yyy >= float3(0,357912512,4.2949673e+009));
    r6.xyz = r6.xyz ? float3(1,1,1) : 0;
    r3.yw = r6.xy + r6.yz;
    r3.yw = float2(9.99999997e-007,9.99999997e-007) + r3.yw;
    r3.yw = float2(0.5,0.5) * r3.yw;
    r3.yw = frac(r3.yw);
    r3.yw = r3.yw * r5.xy;
    r3.yw = float2(2,2) * r3.yw;
    r3.y = r3.y + r3.w;
    r3.y = 9.99999997e-007 + r3.y;
    r3.y = min(1, r3.y);
    r1.w = r3.y * 0.25 + 0.75;
    r5.xyz = -cb9[r0.y+32].zxy * cb9[r0.y+32].yzx;
    r5.xyz = -cb9[r0.y+32].yzx * cb9[r0.y+32].zxy + -r5.xyz;
    r3.y = dot(-cb9[r0.y+32].xyz, cb9[r0.y+32].xyz);
    r6.w = -r3.y;
    r6.xyz = cb9[r0.y+32].www * cb9[r0.y+32].xyz + r5.xyz;
    r5.xyzw = cb9[r0.y+32].xyzw * float4(-1,-1,-1,1);
    r5.xyzw = cb9[r0.y+32].wwww * r5.xyzw + r6.xyzw;
    r6.xyz = r5.xyz;
    r6.w = -0;
    r5.xyzw = r5.wwww * float4(0,0,0,1) + r6.xyzw;
    r6.xyz = cb9[r0.y+32].zxy * r5.yzx;
    r6.xyz = cb9[r0.y+32].yzx * r5.zxy + -r6.xyz;
    r3.y = dot(cb9[r0.y+32].xyz, r5.xyz);
    r7.w = -r3.y;
    r7.xyz = cb9[r0.y+32].www * r5.xyz + r6.xyz;
    r5.xyzw = r5.wwww * cb9[r0.y+32].xyzw + r7.xyzw;
    r3.y = 2.32830644e-010 * r3.x;
    r6.xy = r3.xx * float2(8.07396594e-010,8.3153838e-011) + float2(0,0.642857015);
    r7.xyz = cmp(r3.xxx >= float3(0,887628032,4.2949673e+009));
    r7.xyz = r7.xyz ? float3(1,1,1) : 0;
    r3.xw = r7.xy + r7.yz;
    r3.xw = float2(9.99999997e-007,9.99999997e-007) + r3.xw;
    r3.xw = float2(0.5,0.5) * r3.xw;
    r3.xw = frac(r3.xw);
    r3.xw = r3.xw * r6.xy;
    r3.xw = float2(2,2) * r3.xw;
    r3.x = r3.x + r3.w;
    r3.x = 9.99999997e-007 + r3.x;
    r3.x = min(1, r3.x);
    r6.xyz = r3.xxx * float3(0,0,-0.200000003) + float3(-1,0,0.100000001);
    r7.xyz = r6.zxy * -r5.yzx;
    r7.xyz = r6.yzx * -r5.zxy + -r7.xyz;
    r3.x = dot(r6.xz, -r5.xz);
    r7.w = -r3.x;
    r6.xyw = float3(-1,0,0);
    r6.xyzw = r5.wwww * r6.xyzw + r7.xyzw;
    r7.xyz = r6.yzx * r5.zxy;
    r7.xyz = r5.yzx * r6.zxy + -r7.xyz;
    r6.xyz = r5.www * r6.xyz + r7.xyz;
    r6.xyz = r6.www * r5.xyz + r6.xyz;
    r6.xyz = cb9[r0.y+0].xyz + r6.xyz;
    r4.y = 2.32830644e-010 * r3.z;
    r7.w = r3.z * 4.65661294e-011 + -0.100000001;
    r0.y = mad((int)r0.w, 0x0019660d, 0x3c6ef35f);
    r0.w = (uint)r0.y;
    r8.x = r0.w * 4.65661287e-010 + -1;
    r0.y = mad((int)r0.y, 0x0019660d, 0x3c6ef35f);
    r0.w = (uint)r0.y;
    r8.y = r0.w * 4.65661287e-010 + -1;
    r0.y = mad((int)r0.y, 0x0019660d, 0x3c6ef35f);
    r0.w = (uint)r0.y;
    r0.w = r0.w * 4.65661287e-010 + -1;
    r8.z = r0.w * r2.z;
    r3.xzw = float3(0.839999974,0.400000006,0.400000006) * r8.xyz;
    r0.y = mad((int)r0.y, 0x0019660d, 0x3c6ef35f);
    r0.w = (uint)r0.y;
    r0.y = mad((int)r0.y, 0x0019660d, 0x3c6ef35f);
    r0.y = (uint)r0.y;
    r0.y = cb0[10].x * r0.y;
    r0.yw = float2(2.32830644e-010,1.46291812e-009) * r0.yw;
    sincos(r0.y, r8.x, r9.x);
    sincos(r0.w, r10.x, r11.x);
    r9.y = r10.x * r8.x;
    r9.z = r11.x * r8.x;
    r8.xyz = r9.xyz + r9.xyz;
    r9.xyz = cb9[r0.z+32].yzx * cb9[r0.z+0].zxy;
    r9.xyz = cb9[r0.z+0].yzx * cb9[r0.z+32].zxy + -r9.xyz;
    r0.y = dot(cb9[r0.z+0].xyz, cb9[r0.z+32].xyz);
    r9.w = -r0.y;
    r10.xyz = cb9[r0.z+0].xyz;
    r10.w = 0;
    r9.xyzw = cb9[r0.z+32].wwww * r10.xyzw + r9.xyzw;
    r10.xyz = -cb9[r0.z+32].zxy * r9.yzx;
    r10.xyz = -cb9[r0.z+32].yzx * r9.zxy + -r10.xyz;
    r9.xyz = cb9[r0.z+32].www * r9.xyz + r10.xyz;
    r9.xyz = r9.www * -cb9[r0.z+32].xyz + r9.xyz;
    r10.xyz = -cb9[r0.z+32].zxy * r5.yzx;
    r10.xyz = -cb9[r0.z+32].yzx * r5.zxy + -r10.xyz;
    r0.y = dot(-cb9[r0.z+32].xyz, r5.xyz);
    r11.w = -r0.y;
    r11.xyz = cb9[r0.z+32].www * r5.xyz + r10.xyz;
    r10.xyzw = cb9[r0.z+32].xyzw * float4(-1,-1,-1,1);
    r5.xyzw = r5.wwww * r10.xyzw + r11.xyzw;
    r10.xyz = cb9[r0.z+32].yzx * r6.zxy;
    r10.xyz = r6.yzx * cb9[r0.z+32].zxy + -r10.xyz;
    r0.y = dot(r6.xyz, cb9[r0.z+32].xyz);
    r10.w = -r0.y;
    r6.xyz = cb9[r0.z+32].www * r6.xyz;
    r6.w = 0;
    r6.xyzw = r10.xyzw + r6.xyzw;
    r10.xyz = -cb9[r0.z+32].zxy * r6.yzx;
    r10.xyz = -cb9[r0.z+32].yzx * r6.zxy + -r10.xyz;
    r6.xyz = cb9[r0.z+32].www * r6.xyz + r10.xyz;
    r0.yzw = r6.www * -cb9[r0.z+32].xyz + r6.xyz;
    r0.yzw = -r9.xyz + r0.yzw;
    r6.xyz = -r5.yzx * r3.wxz;
    r6.xyz = r3.zwx * -r5.zxy + -r6.xyz;
    r4.z = dot(r3.xzw, -r5.xyz);
    r6.w = -r4.z;
    r9.xyz = r5.www * r3.xzw;
    r9.w = 0;
    r6.xyzw = r9.xyzw + r6.xyzw;
    r3.xzw = r6.yzx * r5.zxy;
    r3.xzw = r5.yzx * r6.zxy + -r3.xzw;
    r3.xzw = r5.www * r6.xyz + r3.xzw;
    r3.xzw = r6.www * r5.xyz + r3.xzw;
    r7.xyz = r3.xzw + r0.yzw;
    r0.yzw = r8.zxy * -r5.yzx;
    r6.xyz = r8.yzx * -r5.zxy + -r0.yzw;
    r0.y = dot(r8.xyz, -r5.xyz);
    r6.w = -r0.y;
    r8.xyz = r5.www * r8.xyz;
    r8.w = 0;
    r6.xyzw = r8.xyzw + r6.xyzw;
    r0.yzw = r6.yzx * r5.zxy;
    r0.yzw = r5.yzx * r6.zxy + -r0.yzw;
    r0.yzw = r5.www * r6.xyz + r0.yzw;
    r5.xyz = r6.www * r5.xyz + r0.yzw;
    r0.x = mad(5, (int)vThreadID.x, (int)r0.x);
    r5.w = 0;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.xxxx, r5.xyzw
    r5.xyzw = (int4)r0.xxxx + int4(1,2,3,4);
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r5.xxxx, r7.xyzw
    r1.xz = float2(0,0);
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r5.yyyy, r1.xyzw
    r2.z = r3.y;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r5.zzzz, r2.xyzw
    r4.w = 0;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r5.wwww, r4.xyww
  }
  return;
}